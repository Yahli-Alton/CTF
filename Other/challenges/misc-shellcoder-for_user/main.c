#define _GNU_SOURCE

#include <stdio.h>
#include <signal.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <stdint.h>

#include <sys/mman.h>


typedef void(*sa_sigaction_t)(int, siginfo_t *, void *);

const unsigned char reset_code[] =
{

	/*
		movq xmm0, rax
		movq xmm1, rbx
		movq xmm2, rcx
		movq xmm3, rdx
		movq xmm4, rbp
		movq xmm5, rsp
		movq xmm6, rsi
		movq xmm7, rdi
		movq xmm8, r8
		movq xmm9, r9
		movq xmm10, r10
		movq xmm11, r11
		movq xmm12, r12
		movq xmm13, r13
		movq xmm14, r14
		movq xmm15, r15
	*/

	0x66, 0x48, 0x0F, 0x6E, 0xC0,
	0x66, 0x48, 0x0F, 0x6E, 0xCB,
	0x66, 0x48, 0x0F, 0x6E, 0xD1,
	0x66, 0x48, 0x0F, 0x6E, 0xDA,
	0x66, 0x48, 0x0F, 0x6E, 0xE5,
	0x66, 0x48, 0x0F, 0x6E, 0xEC,
	0x66, 0x48, 0x0F, 0x6E, 0xF6,
	0x66, 0x48, 0x0F, 0x6E, 0xFF,
	0x66, 0x4D, 0x0F, 0x6E, 0xC0,
	0x66, 0x4D, 0x0F, 0x6E, 0xC9,
	0x66, 0x4D, 0x0F, 0x6E, 0xD2,
	0x66, 0x4D, 0x0F, 0x6E, 0xDB,
	0x66, 0x4D, 0x0F, 0x6E, 0xE4,
	0x66, 0x4D, 0x0F, 0x6E, 0xED,
	0x66, 0x4D, 0x0F, 0x6E, 0xF6,
	0x66, 0x4D, 0x0F, 0x6E, 0xFF,

	/*
		mov rax, 0x1000
		mov rbx, rax
		mov rcx, rax
		mov rdx, rax
		mov rbp, rax
		mov rsp, rax
		mov rsi, rax
		mov rdi, rax
		mov r8, rax
		mov r9, rax
		mov r10, rax
		mov r11, rax
		mov r12, rax
		mov r13, rax
		mov r14, rax
		mov r15, rax
	*/

	0x48, 0xC7, 0xC0, 0x00, 0x10, 0x00, 0x00,
	0x48, 0x8B, 0xD8,
	0x48, 0x8B, 0xC8,
	0x48, 0x8B, 0xD0,
	0x48, 0x8B, 0xE8,
	0x48, 0x8B, 0xE0,
	0x48, 0x8B, 0xF0,
	0x48, 0x8B, 0xF8,
	0x4C, 0x8B, 0xC0,
	0x4C, 0x8B, 0xC8,
	0x4C, 0x8B, 0xD0,
	0x4C, 0x8B, 0xD8,
	0x4C, 0x8B, 0xE0,
	0x4C, 0x8B, 0xE8,
	0x4C, 0x8B, 0xF0,
	0x4C, 0x8B, 0xF8

};

__attribute__ ((naked)) void recover_context()
{


	__asm__ __volatile__
	(
		"movq %xmm0, %rax\n\t"
		"movq %xmm1, %rbx\n\t"
		"movq %xmm2, %rcx\n\t"
		"movq %xmm3, %rdx\n\t"
		"movq %xmm4, %rbp\n\t"
		"movq %xmm5, %rsp\n\t"
		"movq %xmm6, %rsi\n\t"
		"movq %xmm7, %rdi\n\t"
		"movq %xmm8, %r8\n\t"
		"movq %xmm9, %r9\n\t"
		"movq %xmm10, %r10\n\t"
		"movq %xmm11, %r11\n\t"
		"movq %xmm12, %r12\n\t"
		"movq %xmm13, %r13\n\t"
		"movq %xmm14, %r14\n\t"
		"movq %xmm15, %r15\n\t"
		"ret\n\t"
	);
}


__attribute__ ((naked)) void sigtrap_handler(int signal, siginfo_t *si, void *context)
{
	__asm__ __volatile__
	(
		"movq %0, %%rax\n\t"
		"movq %%rax, 0xa8(%%rdx)\n\t"
		"ret"
		:
		: "r" (recover_context)
		: "rax", "rdx", "memory"
	);

}

__attribute__ ((naked)) void sigalarm_handler(int signal, siginfo_t *si, void *context)
{
	__asm__ __volatile__
	(
		"movq $0x3c, %rax\n\t"
		"syscall\n\t"
	);

}

void setup_signal_handler(int sig, sa_sigaction_t handler)
{
	struct sigaction sa;
	memset(&sa, 0, sizeof(sa));
	sa.sa_sigaction = handler;
	sa.sa_flags = SA_SIGINFO;
	sigemptyset(&sa.sa_mask);

	if (sigaction(sig, &sa, NULL) < 0)
	{
		perror("sigaction");
		exit(EXIT_FAILURE);
	}
}

void check_mmap_min_addr()
{
	FILE *fp = fopen("/proc/sys/vm/mmap_min_addr", "r");
	if (fp == NULL)
	{
		perror("fopen");
		exit(EXIT_FAILURE);
	}

	char *line = NULL;
	size_t len = 0;
	getline(&line, &len, fp);


	if (atoi(line) != 0)
	{
		fprintf(stderr, "mmap_min_addr != 0");
		free(line);
		exit(EXIT_FAILURE);
	}

	free(line);
}


/*

To run on local env:
# sysctl -w vm.mmap_min_addr=0

or

# echo "vm.mmap_min_addr = 0" > /etc/sysctl.d/mmap_min_addr.conf
# /etc/init.d/procps restart
*/

int main()
{

	char payload_hex[128] = {0};
	unsigned char payload_bytes[0x2000] = {0};
	unsigned char front[0x1000] = {0};
	unsigned char rear[0x1000] = {0};
	size_t payload_len;


	setvbuf(stdout, 0, 2, 0);
	setvbuf(stdin, 0, 2, 0);
	setvbuf(stderr, 0, 2, 0);

	setup_signal_handler(SIGALRM, (sa_sigaction_t) sigalarm_handler);
	setup_signal_handler(SIGTRAP, (sa_sigaction_t) sigtrap_handler);


	check_mmap_min_addr();
	alarm(10);

	uint8_t *mem = (uint8_t *) mmap(NULL, 0x2000, PROT_READ | PROT_WRITE | PROT_EXEC, MAP_ANONYMOUS | MAP_PRIVATE | MAP_FIXED, -1, 0);
	if (mem == MAP_FAILED)
	{
		perror("mmap");
		exit(EXIT_FAILURE);
	}

	if (mem != 0)
	{
		perror("mmap (2)");
		exit(EXIT_FAILURE);
	}


	while (true)
	{
		printf(": ");
		fgets(payload_hex, sizeof(payload_hex) - 1, stdin);
		payload_hex[strcspn(payload_hex, "\n")] = 0;

		payload_len = 0;
		for (size_t i = 0; i < strlen(payload_hex); i += 2)
		{
			if (sscanf(payload_hex + i, "%2hhx", &payload_bytes[payload_len]) == 1)
			{
				payload_len++;
			}
			else
			{
				break;
			}

		}

		if (payload_len == 0 || (strlen(payload_hex) % 2 != 0))
		{
			printf("malformed input!\n");
			break;
		}

		if (payload_len > 0x30)
		{
			printf("too long!\n");
			break;
		}
		else if (payload_len < 4)
		{
			printf("too short!\n");
			break;
		}
		else
		{

			memcpy(front, payload_bytes, payload_len - 2);
			memset(front + payload_len - 2, 0xcc, sizeof(front) - payload_len + 2);

			memcpy(rear, payload_bytes + payload_len - 2, 2);
			memset(rear + 2, 0xcc, sizeof(rear) - 2);

			memcpy(payload_bytes, front, sizeof(front));
			memcpy(payload_bytes + sizeof(front), rear, sizeof(rear));

			memcpy(mem, payload_bytes, sizeof(payload_bytes));
			memcpy(mem + sizeof(front) - sizeof(reset_code), reset_code, sizeof(reset_code));

			((void (*)()) mem + sizeof(front) - sizeof(reset_code))();
		}
	}

	return 0;
}
