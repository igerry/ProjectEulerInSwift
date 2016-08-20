//
//  common.swift
//  ProjectEulerInSwift
//
//  Created by dodo on 18/08/2016.
//  Copyright © 2016 dodo. All rights reserved.
//

import Foundation

func getNextPrime(primes: NSMutableArray) -> Int {
    if primes.count == 0 {
        primes.addObject(2)
        return 2;
    }
    
    if primes.count == 1 {
        primes.addObject(3)
        return 3;
    }
    
    var findNewPrime = false
    var nextPrime = primes.lastObject as! Int + 2
    while !findNewPrime {
        findNewPrime = true
        for i in primes {
            if nextPrime % (i as! Int) == 0 {
                findNewPrime = false
                break
            }
        }
        if (findNewPrime) {
            primes.addObject(nextPrime)
            break
        }
        
        nextPrime = nextPrime + 2
    }
    
    return nextPrime
}
