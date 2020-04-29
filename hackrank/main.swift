//
//  main.swift
//  hackrank
//
//  Created by sparrow on 2020/02/21.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation


func segment(x: Int, arr: [Int]) -> Int {
    var slice = Array(arr[0..<x])
    var min = slice.min()!
    var max = min
    for i in x..<arr.count {
        let f = slice.removeFirst()
        slice.append(arr[i])
        if min == f {
            min = slice.min()!
        } else {
            min = min < arr[i] ? min: arr[i]
        }
        
        if max <  min {
            max = min
        }
    }
    return max
}

struct Vertex {
    var x: Int
    var y: Int
}

print(segment(x: 3, arr: [2,5,4,6,8]))

