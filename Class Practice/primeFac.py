def is_prime(n):
    """Return True iff N is prime.
    >>> is_prime(1)
    False
    >>> is_prime(2)
    True
    >>> is_prime(8)
    False
    >>> is_prime(21)
    False
    >>> is_prime(23)
    True
    """
    return n > 1 and smallest_factor(n) == n

def smallest_factor(n):
    """Returns the smallest value k>1 that evenly divides N."""
    for fac in range(2, n + 1):
        if(n % fac == 0):
            return fac
    return 1

def print_factors(n):
    """Print the prime factors of N.
    >>> print_factors(180)
    2
    2
    3
    3
    5
    """
    
    x = 1
    while(x <= n):
        if(is_prime(x) and n % x == 0):
            while(n % x == 0):
                print(x)
                n = n // x
        x += 1
            