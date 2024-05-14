def i_root(num, root):
    i = num.bit_length() // root
    m = 1 << i
    while m ** root < num:
        m <<= 1
        i += 1
    while m ** root > num:
        m >>= 1
        i -= 1
    for k in range(i-1, -1, -1):
        x = m | (1 << k)
        if x ** root <= num:
            m = x
    return m