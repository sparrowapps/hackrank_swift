//
//  MaxMin.swift
//  hackrank
//
//  Created by  sparrow on 2020/03/27.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

func maxMin(k: Int, arr: [Int]) -> Int {


    var minMax = Int(INT_MAX)
    let sortedArray = arr.sorted()
    for i in 0...sortedArray.count - k {
        let temp = sortedArray[i + k - 1] - sortedArray[i]
        if temp < minMax {
            minMax = temp
        }
    }

    return minMax
}

//print(maxMin(k: 3, arr: [100,
//200,
//300,
//350,
//400,
//401,
//402]))
