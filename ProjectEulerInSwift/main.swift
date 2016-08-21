//
//  main.swift
//  ProjectEulerInSwift
//
//  Created by dodo on 18/08/2016.
//  Copyright © 2016 dodo. All rights reserved.
//

import Foundation

let projectEuler = "projecteuler.net"
let start = NSDate()

let p = Problem20()
print("[Result]: \(p.solution())")

let diff = -start.timeIntervalSinceNow
print("[TotalTime]: \(diff)s")
