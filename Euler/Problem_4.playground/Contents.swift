//: Playground - noun: a place where people can play

import Foundation

let projectEuler = "projecteuler.net"

/*
 Largest palindrome product
 Problem 4
 906609
 
 A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
 
 Find the largest palindrome made from the product of two 3-digit numbers.
 
 */
func checkPalindromic(number: Int) -> Bool {
    let pString:String = String(number)
    let count = pString.characters.count
    var check = true
    for i in 0...(count/2 - 1) {
        let ri = count - 1 - i
        let c = pString[pString.startIndex.advancedBy(i)]
        let rc = pString[pString.startIndex.advancedBy(ri)]
        if c != rc {
            check = false
            break
        }
    }
    return check
}

func problem4() -> Int {
    var maxPalindromic = 0
    for i in 900...999 {
        for j in 900...999 {
            let number = i * j
            if checkPalindromic(number) && number > maxPalindromic {
                print("\(number)")
                maxPalindromic = number
            }
        }
    }
    
    return maxPalindromic
}
let p4 = problem4()