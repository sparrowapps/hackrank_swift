//
//  MinimumSwaps2.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/09.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

func minimumSwaps(arr: [Int]) -> Int {
    var dic = [Int: Int]()
    var idx = 0
    for a in arr {
        dic.updateValue(idx, forKey: a)
        idx = idx + 1
    }
    
    var ans = 0
    var array = arr
    for i in 0..<array.count {
        if array[i] != i + 1 {
            ans = ans + 1
            let t =  array[i]//7
            array[i] = i + 1
            let idx = dic[i+1]!
            array[idx] = t
            dic.updateValue(i, forKey: i+1)
            dic.updateValue(idx, forKey: t)
        }
    }
    //print(array)
    return ans
}

//print(minimumSwaps(arr: [7,1,3,2,4,5,6]))
