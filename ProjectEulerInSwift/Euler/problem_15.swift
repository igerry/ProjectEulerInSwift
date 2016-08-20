import Foundation

/*
 Lattice paths
 Problem 15
 137846528820
 
 Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
 
 
 
 How many such routes are there through a 20×20 grid?
 */

func problem15() -> Int {
    let n:Int = 20 + 1
    var values = [Int:Int]()
    
    for i in 0...n {
        for j in 0...n {
            if i == 0 || j == 0 {
                values[i*n + j] = 1
            } else {
                values[i*n + j] = values[i*n + j-1]! + values[(i-1)*n + j]!
            }
        }
    }

    return values[n*n - 1]!
}
let p15 = problem15()
