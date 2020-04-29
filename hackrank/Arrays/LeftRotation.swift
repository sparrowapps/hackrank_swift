//
//  LeftRotation.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/07.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

/* timeout
func rotLeft(a: [Int], d: Int) -> [Int] {
    var queue = Queue<Int>()

    for e in a {
        queue.enQueue(value: e)
    }
    
    for _ in 0..<d {
        let t = queue.deQueue()
        queue.enQueue(value: t!)
    }
    
    return queue.elements
}
*/

func rotLeft(a: [Int], d: Int) -> [Int] {
//    var res = [Int](repeating: 0, count: a.count)
//    let d2 = d % a.count
//    for i in 0..<a.count {
//        res[i] = a[(i + d2) % a.count]
//    }
//    return res
    var array = a

    let r = d % a.count
    let slice1 = a[0..<r]
    let slice2 = a[r..<a.count]
    array = Array(slice2) + Array(slice1)

    return array
}

