import Foundation

/*
 Largest prime factor
 Problem 3
 6857
 
 The prime factors of 13195 are 5, 7, 13 and 29.
 
 What is the largest prime factor of the number 600851475143
 */
class Problem3 {

    func solution() -> Int {
        var n:Int = 600851475143
        let primes:NSMutableArray = []
        
        var maxPrime:Int = 0
        while n > 1 {
            let nextPrime = Common.getNextPrime(primes)
            
            while n % nextPrime == 0 {
                if nextPrime > maxPrime {
                    maxPrime  = nextPrime
                }
                n /= nextPrime
            }
            
            print("\((maxPrime, n))")
        }
        
        return maxPrime
    }
    
}
