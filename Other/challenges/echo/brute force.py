import z3


# k1 = 0
# k2 = 0

# end = int.from_bytes(b"echo ", "big")

# while True:
#     k1 += 1

#     min1 = end * 8 ** k1
#     max1 = end * 8 ** k1 + 8 ** k1 - 1

#     k2 = 0
#     min2 = end * 8 ** k2
#     max2 = end * 8 **

end = int.from_bytes(b"echo ", "big")
# n = z3.Int("n")
# m = z3.Int("m")
x = z3.Int("x")
y = z3.Int("y")
m = 0

# z3.solve((end * 8 ** n + x) ** 2 == end * 8 ** m + y, 0 < x < 8 ** n, 0 < y < 8 ** m)
for n in range(1000):
    min1 = end * 8 ** n
    max1 = (end + 1) * 8 ** n - 1

    min2 = end * 8 ** m
    max2 = (end + 1) * 8 ** m - 1

    while min1 > max2:
        m += 1
        max2 = (end + 1) * 8 ** m - 1

    min2 = end * 8 ** m

    while max1 > min2:
        print(n, m)
        for x in range(8 ** n):
            a = 8 ** n
            b = 8 ** m
            if 0 <= (end * a + x) ** 2 - end * b < b:
                print("found!!!!!!!!!!!!!!!!!!", n, m, x)
        # z3.solve((end * 8 ** n + x) ** 2 == end * 8 ** m + y, 0 <= x, x < 8 ** n, 0 <= y, y < 8 ** m)
        m += 1
        min2 = end * 8 ** m
