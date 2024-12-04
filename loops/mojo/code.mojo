import sys
import random 

fn main() raises:
    var size = 10000
    var u = atol(sys.argv()[1])                 # Get an input number from the command line
    var r = int(random.random_ui64(0, size))    # Get a random number 0 <= r < 10k
    var a = List[Int]()                         # Array of 10k elements initialized to 0
    for _ in range(size):                       
        a.append(0)
    for i in range(size):                       # 10k outer loop iterations 
        for j in range(100000):                 # 100k inner loop iterations, per outer loop iteration
            a[i] += j%u                         # Simple sum
        a[i] += r                               # Add a random value to each element in array
    print(a[r])                                 # Print out a single element from the array