def legendre(a, p):
    return pow(a, (p - 1) // 2, p)

def tonelli(n, p):
    q = p - 1
    s = 0
    while q % 2 == 0:
        q //= 2
        s += 1
    if s == 1:
        return pow(n, (p + 1) // 4, p)
    for z in range(2, p):
        if p - 1 == legendre(z, p):
            break
    c = pow(z, q, p)
    r = pow(n, (q + 1) // 2, p)
    t = pow(n, q, p)
    m = s
    t2 = 0
    while (t - 1) % p != 0:
        t2 = (t * t) % p
        for i in range(1, m):
            if (t2 - 1) % p == 0:
                break
            t2 = (t2 * t2) % p
        b = pow(c, 1 << (m - i - 1), p)
        r = (r * b) % p
        c = (b * b) % p
        t = (t * c) % p
        m = i
    return r

def xgcd(a, b): 
    if a == 0 : 
        return 0,1
             
    x1,y1 = xgcd(b%a, a) 
    x = y1 - (b//a) * x1 
    y = x1 
     
    return x,y 
def crt(a, b, m, n):
    m1, n1 = xgcd(m, n)
    return ((b *m * m1 + a *n*n1) % (m * n))

p = 101
for i in range(1, p):
    assert legendre(i ** 2, p) == 1
    assert (tonelli(i ** 2, p) ** 2) % p == (i ** 2) % p

q = 11

for i in range(p * q):
    assert crt(i % q, i % p, q, p) == i
