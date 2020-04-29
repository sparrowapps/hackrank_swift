//
//  LuckBalance.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/08.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

func luckBalance(k: Int, contests: [[Int]]) -> Int {
    var important = [Int]()
    var totalLuck = 0
    for i in 0..<contests.count {
        if contests[i][1] == 1 {
            important.append(contests[i][0])
        }
        totalLuck = totalLuck + contests[i][0]
    }
    
    var score = 0
    if important.count > k {
        let canWin = important.count - k
        
        important = important.sorted()
        for i in 0..<canWin {
            score = score + important[i] * 2
        }
    }
    
    return totalLuck - score
}

//print(luckBalance(k: 3, contests: [
//    [5,0],
//    [2,0],
//    [1,0],
//    [8,0],
//    [10,0],
//    [5,0],
//]))
