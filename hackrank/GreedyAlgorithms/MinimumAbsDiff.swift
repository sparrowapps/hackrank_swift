//
//  MinimumAbsDiff.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/08.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation
func minimumAbsoluteDifference(arr: [Int]) -> Int {
    let setarry = Set(arr)
    if setarry.count != arr.count {
        return 0
    }
    
    var diffs = [Int]()
    
    let sorted = arr.sorted()
    for i in 0..<sorted.count - 1 {
        diffs.append(abs(sorted[i] - sorted[i+1]))
    }
    
    return diffs.min()!
}

//print(minimumAbsoluteDifference(arr:
//    [-59, -36, -13, 1, -53, -92, -2, -96, -54, 75]))
