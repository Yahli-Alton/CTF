import math
# Python3 program to implement Shanks Tonelli
# algorithm for finding Modular Square Roots 
 
# utility function to find pow(base, 
# exponent) % modulus 
# def pow1(base, exponent, modulus): 
 
#     result = 1; 
#     base = base % modulus; 
#     while (exponent > 0): 
#         if (exponent % 2 == 1):
#             result = (result * base) % modulus; 
#         exponent = int(exponent) >> 1; 
#         base = (base * base) % modulus; 
 
#     return result; 
 
# utility function to find gcd 
# def gcd(a, b): 
#     if (b == 0): 
#         return a; 
#     else:
#         return gcd(b, a % b); 
 
# Returns k such that b^k = 1 (mod p) 
def order(p, b): 
 
    # if (gcd(p, b) != 1):
    #     print("p and b are not co-prime.\n"); 
    #     return -1; 
 
    # Initializing k with first 
    # odd prime number 
    k = 3; 
    while (True): 
        if (pow(b, k, p) == 1): 
            return k; 
        k += 1; 
 
# function return p - 1 (= x argument) as 
# x * 2^e, where x will be odd sending e 
# as reference because updation is needed
# in actual e 
def convertx2e(x):
    z = 0; 
    while (x % 2 == 0):
        x = x // 2; 
        z += 1; 
         
    return [x, z]; 
 
# Main function for finding the
# modular square root 
def STonelli(n, p): 
 
    # a and p should be coprime for
    # finding the modular square root 
    # if (gcd(n, p) != 1):
    #     print("a and p are not coprime\n"); 
    #     return -1; 
 
    # If below expression return (p - 1) then
    # modular square root is not possible 
    if (pow(n, (p - 1) // 2, p) == (p - 1)):
        print("no sqrt possible\n"); 
        return -1; 
 
    # expressing p - 1, in terms of s * 2^e, 
    # where s is odd number 
    ar = convertx2e(p - 1);
    Q = ar[0];
    S = ar[1];
 
    # finding smallest q such that 
    # q ^ ((p - 1) / 2) (mod p) = p - 1 
    z = 2; 
    while (True):
         
        # q - 1 is in place of (-1 % p) 
        if (pow(z, (p - 1) // 2, p) == (p - 1)): 
            break
        z += 1
 
    # Initializing variable x, b and g 
    R = pow(n, (Q + 1) // 2, p)
    t = pow(n, Q, p)
    c = pow(z, Q, p) 
 
    M = S
 
    # keep looping until b become 
    # 1 or m becomes 0 
    while (True):
        i = 0
        while (i < M):
            if (order(p, t) == -1): 
                return -1
 
            # finding m such that b^ (2^m) = 1 
            if (order(p, t) == pow(2, i)): 
                break
            i += 1
 
        if (i == 0): 
            return R
 
        # updating value of x, g and b 
        # according to algorithm 
        R = (R * pow(c, int(pow(2, M - i - 1)), p)) % p
        c = pow(c, pow(2, M - i), p)
        t = (t * c) % p
 
        if (t == 1): 
            return R; 
        M = i; 
 
# Driver Code
n = 8479994658316772151941616510097127087554541274812435112009425778595495359700244470400642403747058566807127814165396640215844192327900454116257979487432016769329970767046735091249898678088061634796559556704959846424131820416048436501387617211770124292793308079214153179977624440438616958575058361193975686620046439877308339989295604537867493683872778843921771307305602776398786978353866231661453376056771972069776398999013769588936194859344941268223184197231368887060609212875507518936172060702209557124430477137421847130682601666968691651447236917018634902407704797328509461854842432015009878011354022108661461024768; 
 
# p should be prime 
p = 30531851861994333252675935111487950694414332763909083514133769861350960895076504687261369815735742549428789138300843082086550059082835141454526618160634109969195486322015775943030060449557090064811940139431735209185996454739163555910726493597222646855506445602953689527405362207926990442391705014604777038685880527537489845359101552442292804398472642356609304810680731556542002301547846635101455995732584071355903010856718680732337369128498655255277003643669031694516851390505923416710601212618443109844041514942401969629158975457079026906304328749039997262960301209158175920051890620947063936347307238412281568760161; 
 
x = STonelli(n, p)
 
# if (x == -1): 
#     print("Modular square root is not exist\n")
# else:
#     print("Modular square root of", n, 
#           "and", p, "is", x)

print(p - x)
# This code is contributed by mits

# I don't know why it is not working?