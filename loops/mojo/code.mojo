import sys
import random
from memory import memset_zero


def main():
    size = 10_000
    u = int(sys.argv()[1])                  # Get an input number from the command line
    r = int(random.random_ui64(0, size))    # Get a random number 0 <= r < 10k
    a = List[UInt32](capacity=size)         # Array of 10k elements initialized to 0
    memset_zero(a.unsafe_ptr(), size)
    for i in range(size):                   # 10k outer loop iterations
        for j in range(100_000):            # 100k inner loop iterations, per outer loop iteration
            a[i] += j % u                   # Simple sum
        a[i] += r                           # Add a random value to each element in array
    print(a[r])                             # Print out a single element from the array
