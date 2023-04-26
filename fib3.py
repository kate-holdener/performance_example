import sys
def fib(n):
    fibs = [0] * (n+1)
    fibs[1] = 1

    for i in range(2,n+1):
        fibs[i] = fibs[i-1]+fibs[i-2]
    return fibs[n]

if len(sys.argv) > 1:
   n = int(sys.argv[1])
   print(fib(n))
