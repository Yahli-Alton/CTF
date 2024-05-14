from subprocess import Popen, PIPE


# process = Popen(["python3", "main.py"], stdout=PIPE, stdin=PIPE)
process = Popen(["nc", "amt.rs", "31692"], stdout=PIPE, stdin=PIPE)

for i in range(10):
    x = 0

    requests = 0

    while True:
        print(process.stdout.read(5).decode("utf-8"), end="")
        process.stdin.write(f"{-x} {1 << 2050}\n".encode("utf-8"))
        process.stdin.flush()
        result = process.stdout.readline()
        print(result.decode("utf-8"), end="")
        result = int(result.decode("utf-8")[:-1])
        
        if result == 1 << 2050:
            break

        x += result

        

        requests += 1
    
    for _ in range(1411 - requests):
        print(process.stdout.read(5).decode("utf-8"), end="")
        process.stdin.write(b"1 1\n")
        process.stdin.flush()
        print(process.stdout.readline().decode("utf-8"), end="")

    print(process.stdout.read(3).decode("utf-8"), end="")
    process.stdin.write((str(x) + "\n").encode("utf-8"))
    process.stdin.flush()

    print(i)

print(process.stdout.readline())
