for _ in range(5):
    goal = int(input(""))
    
    last = goal % 100

    input_str = ""

    if last == 8:
        input_str += "33 8\n58 8\n"
        
    if last == 33:
        input_str += "33 8\n58 33\n83 33\n"

    binary = goal // 100
    bit = 1

    while binary >> bit != 0:
        # generate next bit
        input_str += f"{2 ** (bit - 1) * 100 + last} {last}\n"

        # add bit to number
        if (binary >> bit) & 1 == 1:
            input_str += f"{last} {(binary % 2 ** bit) * 100 + last}\n"
            input_str += f"{(1 << (bit - 1)) * 100 + last} {last - (binary % 2 ** bit) * 100}\n"

        bit += 1

    print(input_str, end="")
