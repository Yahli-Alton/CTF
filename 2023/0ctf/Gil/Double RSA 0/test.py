from functools import reduce
from math import lcm


def chinese_remainder(m, a):
    sum = 0
    prod = reduce(lambda acc, b: acc*b, m)
    for n_i, a_i in zip(m, a):
        p = prod // n_i
        sum += a_i * mul_inv(p, n_i) * p
    return sum % prod
 
def mul_inv(a, b):
    b0 = b
    x0, x1 = 0, 1
    if b == 1: return 1
    while a > 1:
        q = a // b
        a, b = b, a%b
        x0, x1 = x1 - q * x0, x0
    if x1 < 0: x1 += b0
    return x1

def primes_generator(end):
    numbersLeft = [False, False] + [True] * (end - 1)
    primes = []

    # use index not to pass through all the list each time
    # changed while to for

    for number in range(len(numbersLeft)):
        if numbersLeft[number] == True:
            primes.append(number)
            for index in range(0, end + 1, primes[-1]):
                numbersLeft[index] = False
    
    return primes

def factorize(number, primes):
    factors = []

    # use index not to check primes already checked
    # deleted while, changed if number % prime == 0 to while, and added if number == 1

    for prime in primes:
        count = 0
        while number % prime == 0:
            count += 1
            number //= prime
        if count > 0:
            factors.append((count, prime))
        if number == 1:
            break
    
    if number != 1:
        assert False

    return factors

# mod = product(primes)
# primes are unique
# def discrete_log(m, c, primes):
#     mods = []
#     rems = []
#     phi = 1
#     mod = 1
#     for prime in primes:
#         phi = lcm(phi, prime - 1)
#         mod *= prime
#     for prime in primes:
#         power = phi // (prime - 1)
#         expected = pow(c, power, mod)
#         for rem in range(prime - 1):
#             if expected == pow(m, rem * power, mod):
#                 mods.append(prime - 1)
#                 rems.append(rem)
#                 break
#         else:
#             assert False
#     print(mods)
#     print(rems)
#     return chinese_remainder(mods, rems)
def discrete_log(m, c, primes):
    mods = []
    rems = []
    phi = 1
    mod = 1
    for prime in primes:
        phi = lcm(phi, prime - 1)
        # phi *= prime - 1
        mod *= prime
    phi_primes = factorize(phi, primes_generator(100000))
    for count, prime in phi_primes:
        power = phi // (prime ** count)
        expected = pow(c, power, mod)
        for rem in range(prime ** count):
            if expected == pow(m, rem * power, mod):
                mods.append(prime ** count)
                rems.append(rem)
                break
        else:
            print(count, prime)
            assert False
    return chinese_remainder(mods, rems)

# primes = [211, 211]
# n = 211 * 211
# print(discrete_log(2, pow(2, 17, n), primes))
