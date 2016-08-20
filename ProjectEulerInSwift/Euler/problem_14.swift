import Foundation

/*
 Longest Collatz sequence
 Problem 14
 
 
 The following iterative sequence is defined for the set of positive integers:
 
 n → n/2 (n is even)
 n → 3n + 1 (n is odd)
 
 Using the rule above and starting with 13, we generate the following sequence:
 
 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
 It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
 
 Which starting number, under one million, produces the longest chain?
 
 NOTE: Once the chain starts the terms are allowed to go above one million.
 */
func getNextCollatzTerm(n:Int) -> Int {
    var next = 0
    if n % 2  == 0 {
        next = n / 2
    } else {
        next = 3 * n + 1
    }
    
    return next
}

func termsOfStart(start:Int) -> Int{
    var terms = 0
    var next = start
    while (next > 1) {
        next = getNextCollatzTerm(next)
        terms += 1
    }
    return terms
}

func problem14() -> Int {
    var longest = 1
    var longestTerms = 0
    for i in 1..<1000000 {
        let terms = termsOfStart(i)
        if longestTerms < terms {
            longestTerms = terms
            longest = i
        }
    }
    
    return longest
}
let p14 = problem14()
