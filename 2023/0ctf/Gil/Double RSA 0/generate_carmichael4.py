from queue import PriorityQueue
from itertools import combinations
from math import prod
from gmpy2 import is_prime


def gen_5_smooth():
    primes = [2, 3, 5]
    queue = PriorityQueue()

    for i, p in enumerate(primes):
        queue.put((p, i)) 
    
    yield 1
    while True:
        x, i = queue.get()
        yield x
        for j, q in enumerate(primes[i:], i): 
            queue.put((q*x, j))

def solve():
    limit_lower = 10
    limit_upper = 30

    smooth_lower = 1000
    smooth_upper = smooth_lower * 10

    mult_lower = limit_lower // smooth_lower + 1
    mult_upper = limit_upper // smooth_upper

    smooth_factors = []

    for fact in gen_5_smooth():
        if fact >= smooth_upper:
            break
        if fact >= smooth_lower:
            smooth_factors.append(fact)

    for mult in range(mult_lower, mult_upper):
        primes = [fact * mult + 1 for fact in smooth_factors if is_prime(fact * mult + 1)]

        for comb in combinations(primes, 7):
            product = prod(comb)
            if all((product - 1) % (x - 1) == 0 for x in comb):
                yield comb

a = solve()
for _ in range(5):
    print(next(a))
