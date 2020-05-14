//
//  SlidingWindow.swift
//  hackrank
//
//  Created by  sparrow on 2020/05/14.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

func slidingWindowMin(x: Int, arr: [Int]) -> Int {
    var ans = Int.min
    
    var leftMin = arr
    var rightMin = arr
    
    for i in 1..<arr.count {
        leftMin[i] = i % x == 0 ? arr[i] : min(leftMin[i - 1], arr[i])
        let j = arr.count - i - 1
        rightMin[j] = j & x == 0 ? arr[j] : min(arr[j], rightMin[j + 1])
    }
    
    for index in 0..<arr.count - x {
        let temp = min(rightMin[index], leftMin[index + x - 1])
        if temp > ans {
            ans = temp
        }
    }
    
    return ans
}

//print(slidingWindowMin(x: 3, arr: [2,5,4,6,8,3]))

