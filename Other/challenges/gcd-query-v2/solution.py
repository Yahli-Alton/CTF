from subprocess import Popen, PIPE


while True:
    process = Popen(["python3", "main.py"], stdout=PIPE, stdin=PIPE)
    # process = Popen(["nc", "amt.rs", "31693"], stdout=PIPE, stdin=PIPE)

    x = 0

    requests = 0

    while requests != 16:
        # print(process.stdout.read(5).decode("utf-8"), end="")
        process.stdout.read(5)
        process.stdin.write(f"{-x} {1 << 130}\n".encode("utf-8"))
        process.stdin.flush()
        result = process.stdout.readline()
        # print(result.decode("utf-8"), end="")
        result = int(result.decode("utf-8")[:-1])
        
        if result == 1 << 130:
            break

        x += result

        requests += 1

    for _ in range(15 - requests):
        # print(process.stdout.read(5).decode("utf-8"), end="")
        process.stdout.read(5)
        process.stdin.write(b"1 1\n")
        process.stdin.flush()
        # print(process.stdout.readline().decode("utf-8"), end="")
        process.stdout.readline()

    # print(process.stdout.read(3).decode("utf-8"), end="")
    process.stdout.read(3)
    process.stdin.write((str(x) + "\n").encode("utf-8"))
    process.stdin.flush()

    print(process.stdout.readline())
