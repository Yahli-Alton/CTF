import itertools
from math import gcd
from Crypto.Util.number import isPrime

def mul(l):
    res = 1
    for num in l:
        res *= num
    return res

def factorize(number, primes):
    factors = []

    for prime in primes:
        while number % prime == 0:
            number //= prime
            factors.append(prime)
            if number == 1:
                break
    
    return factors

def get_divisors(primes):
    counts = dict()
    for prime in primes:
        counts[prime] = counts.get(prime, 0) + 1
    
    for prime_counts in itertools.product(*[zip(itertools.repeat(prime), range(1 + count)) for prime, count in counts.items()]):
        divisor = 1
        prime_counts = list(prime_counts)
        for prime, count in prime_counts:
            divisor *= prime ** count
        yield prime_counts, divisor

def foo(primes, x, y, n):
    global seed
    updated_primes = set(primes)
    a = seed
    is_first = True
    while y != 1:
        a += 1
        number = y + a * n
        calculated_gcd = gcd(number, x)
        if calculated_gcd != 1:
            if number // calculated_gcd >= y:
                continue
            # print(a)
            if is_first:
                seed = a
                is_first = False

            for prime in list(updated_primes):
                if number % prime == 0:
                    updated_primes.remove(prime)

            x //= calculated_gcd
            y = number // calculated_gcd
            a = -1
            # print(primes, x, y, n)
    return list(updated_primes)

primes = [2, 2, 2, 2, 3, 3, 3, 5, 5, 7, 7]
# primes = [2, 2, 3, 3, 3, 3, 5, 7, 11]
def try_primes(primes):
    composite = mul(primes)
    divisors = get_divisors(primes)
    prime_divisors = []

    for counts, divisor in divisors:
        if divisor == composite:
            continue

        # if gcd(composite, divisor + 1) == 1:
        if isPrime(divisor + 1) and gcd(divisor + 1, composite) == 1:
            prime_divisors.append(divisor + 1)

    carmichael = mul(prime_divisors)
    y = carmichael % composite
    # print(y)
    # print(len(prime_divisors))
    # # print(y)
    # # print(composite)
    # print(carmichael.bit_length())

    # for counts, divisor in get_divisors(prime_divisors):
    #     if divisor % composite == y:
    #         # if divisor.bit_length() == 512:
    #         print(int(carmichael / divisor).bit_length())
    #         print(counts, (carmichael // divisor))

    # print(sorted(prime_divisors))
    return foo(prime_divisors, carmichael, y, composite)

seed = -1
while True:
    l = try_primes(primes)
    x = mul(l)
    if x.bit_length() == 512:
        print(sorted(l))
        print(x)
    print(x.bit_length(), seed)
