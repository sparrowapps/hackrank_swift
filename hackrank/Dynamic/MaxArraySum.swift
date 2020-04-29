//
//  MaxArraySum.swift
//  hackrank
//
//  Created by  sparrow on 2020/03/29.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

func maxSubsetSum(arr: [Int]) -> Int {
    var exc = 0
    var inc = 0
    var old_inc = inc
    
    for i in 0..<arr.count {
        
        old_inc = inc
        inc = exc + arr[i]
        exc = max(old_inc, exc)
        
        print("arr[i] \(arr[i]) old_inc \(old_inc) inc \(inc) exc \(exc)")
    }
    
    return max(inc, exc)
}

//print(maxSubsetSum(arr: [2,1,5,8,4])) //11
