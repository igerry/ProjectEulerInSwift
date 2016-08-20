import Foundation

/*
 Highly divisible triangular number
 Problem 12
 76576500
 
 The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:
 
 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
 
 Let us list the factors of the first seven triangle numbers:
 
 1: 1
 3: 1,3
 6: 1,2,3,6
 10: 1,2,5,10
 15: 1,3,5,15
 21: 1,3,7,21
 28: 1,2,4,7,14,28
 We can see that 28 is the first triangle number to have over five divisors.
 
 What is the value of the first triangle number to have over five hundred divisors?
 */
func getDivisors(n:Int, primes: NSMutableArray) -> [Int:Int] {
    var divisors = [Int: Int]()
    var nn = n
    while nn > 1 {
        let maxPrime = primes.lastObject as! Int
        if  maxPrime < nn {
            getNextPrime(primes)
        }
        
        for i in primes {
            let prime:Int = i as! Int
            while nn % prime == 0 {
                nn /= prime
                
                if divisors[prime] == nil {
                    divisors[prime] = 1
                } else {
                    divisors[prime] = divisors[prime] as Int! + 1
                }
            }
        }
    }
    
    return divisors
}

func countCombinedDivisors(d1:[Int:Int], d2:[Int:Int]) -> Int {
    var divisors = [Int:Int]()
    for (k, v) in d1 {
        divisors[k] = v
    }
    
    for (k, v) in d2 {
        if divisors[k] == nil {
            divisors[k] = v
        } else {
            divisors[k] = divisors[k] as Int! + v
        }
    }
    
    var divisorsCount = 1
    for (_, v) in divisors {
        divisorsCount *= v + 1
    }
    
    return divisorsCount
}

func problem12() -> Int {
    let primes:NSMutableArray = [2,3]
    
    var n = 1
    var nSum = 1
    var d = 1
    while d <= 500 {
        nSum = n * (n + 1) / 2
        var n1 = n
        var n2 = n + 1
        if n % 2 == 0 {
            n1 = n1 / 2
        } else {
            n2 = n2 / 2
        }
        
        let d1 = getDivisors(n1, primes: primes)
        let d2 = getDivisors(n2, primes: primes)
        d = countCombinedDivisors(d1, d2:d2)
        
        print("\((n, nSum, d))")
        n = n + 1
    }
    return nSum
}
let p12 = problem12()