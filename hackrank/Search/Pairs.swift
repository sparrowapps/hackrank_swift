//
//  Pairs.swift
//  hackrank
//
//  Created by  sparrow on 2020/03/28.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation
//dep binaryserarch
func pairs(k: Int, arr: [Int]) -> Int {

    var sortedArray = arr.sorted()
    
    var res = 0
    while sortedArray.count > 1 {
        let e = sortedArray.removeLast()
        if (sortedArray.binarySearch(for: e - k) != nil) {
            res = res + 1
        }
    }
    return res
}
