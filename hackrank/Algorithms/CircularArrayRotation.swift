//
//  CircularArrayRotation.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/10.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation
// 어레이 순환을 할때 뒷쪽거를
func circularArrayRotation(a: [Int], k: Int, queries: [Int]) -> [Int] {
  
  var array =  a
//   for _ in 0..<k {
//     let f = array.last!
//     array.removeLast()
//     array.insert(f, at: 0)
    //
//   }
    
//    for _ in 0..<k {
//        array.insert(array.removeLast(), at: 0)
//    }

    let r = k % a.count
    let slice1 = a[0..<(a.count - r)]
    let slice2 = a[(a.count - r)..<a.count]
    array = Array(slice2) + Array(slice1)
  
    var res = [Int]()
    for q in queries {
    res.append(array[q])
    }

    return res
  
}
