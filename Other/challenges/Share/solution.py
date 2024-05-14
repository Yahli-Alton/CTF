import subprocess
import time

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

p = subprocess.Popen(["python3", "server.py"], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
# p = subprocess.Popen(["python3", "test.py"], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
# p = subprocess.Popen(["ls", "-l"], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
# p = subprocess.Popen(["nc", "chal-share.chal.hitconctf.com", "11111"], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
# p = subprocess.Popen(["nc", "chal-share.chal.hitconctf.com", "11111"], stdin=subprocess.PIPE)

# print(p.stdout.readline().decode())
# p.stdin.write(b"17\n")
# print(p.stdout.readline().decode())
# p.stdin.writelines([b"17"])
p.stdin.write(b"17\n")
p.stdin.write(b"15\n")
p.stdin.flush()
# time.sleep(2)
# p.stdout.flush()
print(p.stdout.readline().decode())
print(p.stdout.readline().decode())
print(p.stdout.readline().decode())
print(p.stdout.readline().decode())
# print(p.stdout.readline())
# print(p.stdout.readline())
# print(p.stdout.readline())
# print(p.stdout.readline())
# print(p.stdout.readline())
# print(p.stdout.readline())
