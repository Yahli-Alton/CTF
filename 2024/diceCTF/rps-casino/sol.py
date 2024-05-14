import pwn


m = b"paper\n" * 64

offset = len("Choose rock, paper, or scissors: ")
rps = [b"You win!", b"Tie!", b"You lose!"]

p = pwn.process(["python3", "server2.py"])

p.recvline()
p.send(m)

ret = p.recvlines(64)
state = [0] * 66

parsed = []

for l in ret:
    score = l[offset:]
    parsed.append(rps.index(score))

print(parsed)
print()

for x in range(4):
    start = 0
    for i in range(x, 63, 4):
        value = (parsed[i] + parsed[i + 1]) % 3
        if value != 1:
            value >>= 1
            start = i
            for j in range(x, i + 8, 4):
                state[j] = value
            break
    else:
        print(f"no 1 in {x}")
        exit()

    for i in range(start, 63, 4):
        value = (parsed[i] + parsed[i + 1]) % 3
        if value == 1:
            state[i + 4] = state[i]
        else:
            print(i)
            print(value >> 1)
            print(state)
            state[i + 4] = value >> 1
            assert state[i] == value >> 1

# # find non rock
# first = 0

# for i in range(64):
#     l = p.recvline()[offset:-1]
#     index = rps.index(l)
#     # if index & 1 != index & 2
#     if index != 0:
#         first = i
#         state[i + 1] = index & 2
#         for j in range(i):
#             state[j] = index & 1
#         break
# else:
#     print("all rocks")
#     exit()

# print(first)

# for i in range(first + 1, 64):
#     l = p.recvline()[offset:-1]
#     index = rps.index(l)
#     if index == 0:
#         state[i] = state[i - 1]
#     else:
#         state[i] = index & 2

print(sum(v << i for i, v in enumerate(state[:64])))
