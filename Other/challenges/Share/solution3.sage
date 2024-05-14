import subprocess

def inv(a, m):
      
    m0 = m 
    x0 = 0
    x1 = 1
  
    if (m == 1) : 
        return 0
  
    # Apply extended Euclid Algorithm 
    while (a > 1) : 
        # q is quotient 
        q = a // m 
  
        t = m 
  
        # m is remainder now, process 
        # same as euclid's algo 
        m = a % m 
        a = t 
  
        t = x0 
  
        x0 = x1 - q * x0 
  
        x1 = t 
      
    # Make x1 positive 
    if (x1 < 0) : 
        x1 = x1 + m0 
  
    return x1 
  
# k is size of num[] and rem[]. 
# Returns the smallest 
# number x such that: 
# x % num[0] = rem[0], 
# x % num[1] = rem[1], 
# .................. 
# x % num[k-2] = rem[k-1] 
# Assumption: Numbers in num[] 
# are pairwise coprime 
# (gcd for every pair is 1) 
def findMinX(num, rem, k) : 
      
    # Compute product of all numbers 
    prod = 1
    for i in range(0, k) : 
        prod = prod * num[i] 
  
    # Initialize result 
    result = 0
  
    # Apply above formula 
    for i in range(0,k): 
        pp = prod // num[i] 
        result = result + rem[i] * inv(pp, num[i]) * pp 
      
      
    return result % prod 

def mod_division(a, b, p):
    return a * pow(b, p - 2, p) % p


def main():
    primes = [
  17,
  19,
  23,
  29,
  31,
  37,
  41,
  43,
  47,
  53,
  59,
  61,
  67,
  71,
  73,
  79,
  83,
  89,
  97,
  101,
  103,
  107,
  109,
  113,
  127,
  131,
  137,
  139,
  149,
  151,
  157,
  163,
  167,
  173,
  179,
  181,
  191,
  193,
  197,
  199,
  211,
  223,
  227,
  229,
  233,
  239,
  241,
  251,
  257,
  263,
  269,
  271,
  277,
  281,
  283,
  293,
  307,
  311,
  313,
  317,
  331,
  337,
  347,
  349,
  353,
  359,
  367,
  373,
  379,
  383,
  389,
  397,
  401,
  409,
  419,
  421,
  431]
    limit = 2 ** 256

    i = 0
    mul = 1
    while mul < limit:
        mul *= primes[i]
        i += 1

    primes = primes[:i + 1]
    # primes = primes[:30]
    print(len(primes))


    inverses = []
    vectors = []
    for prime in primes:
        A = matrix(GF(prime), [
            [(row + 1) ** (col + 1) for col in range(prime - 2)] for row in range(prime - 2)
        ])
        inverses.append(A^-1)
        vectors.append(inverses[-1] * vector(GF(prime), [1] * (prime - 2)))
        print(prime)


    possibilities_per_prime = [set(range(prime)) for prime in primes]

    num = []
    rem = []

    # p = subprocess.Popen(["python3", "server.py"], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    p = subprocess.Popen(["nc", "chal-share.chal.hitconctf.com", "11111"], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

    done = False

    while not done:
        done = True
        request = b""

        for i, (prime, possibilities) in enumerate(zip(primes, possibilities_per_prime)):
            if len(possibilities) != 1:
                request += str(prime).encode() + b"\n" + str(prime - 1).encode() + b"\n"
                done = False

        p.stdin.write(request)
        p.stdin.flush()

        for i, (prime, possibilities) in enumerate(zip(primes, possibilities_per_prime)):
            if len(possibilities) != 1:
                output = p.stdout.readline()
                shares = vector(GF(prime), eval(output[output.index(b"["):-1]))
                shares = inverses[i] * shares

                for j in range(prime - 2):
                    possibilities.discard(mod_division(shares[j] + 1, vectors[i][j], prime))

    for i, (prime, possibilities) in enumerate(zip(primes, possibilities_per_prime)):
        num.append(prime)
        rem.append(list(possibilities)[0])
    
    p.stdin.write(b"2\n2\n" + str(findMinX(num, rem, len(num)) % limit).encode() + b"\n")
    p.stdin.flush()
    print(p.stdout.readline())

if __name__ == "__main__":
    main()
