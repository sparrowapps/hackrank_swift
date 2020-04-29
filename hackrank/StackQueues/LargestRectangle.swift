//
//  LargestRectangle.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/05.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

//func largestRectangle(h: [Int]) -> Int {
//    let sortedHigh = h.sorted()
//    print(sortedHigh)
//    var rectangle = 0
//    var count = sortedHigh.count
//    for he in sortedHigh {
//        let cur = he * count
//        if rectangle < cur {
//            rectangle = cur
//        } else {
//            //break
//        }
//        count = count - 1
//
//    }
//
//    return rectangle
//
//}
func largestRectangle(h: [Int]) -> Int {
    var mystack = Stack<Int>()
    var max = 0
    var i = 0
    var area = 0
    var curMax = 0
    while ( i < h.count ) {
        if mystack.isEmpty || h[mystack.peek()!] <= h[i] {
            mystack.push(element: i)
            i = i + 1
        } else {
            
            while(!mystack.isEmpty && h[mystack.peek()!] >= h[i]) {
                curMax = mystack.pop()!
                
                area = h[curMax] * (mystack.isEmpty ? (i) : i - 1 - mystack.peek()!)
                
                if area > max {
                    max = area
                }
            }
            
        }
    }
    while(!mystack.isEmpty) {
        curMax = mystack.pop()!
        area = h[curMax] * (mystack.isEmpty ? (i) : i - 1 - mystack.peek()!)
        if area > max {
            max = area
        }
    }
    return max
}

//print(largestRectangle(h: [1, 2, 3, 4, 5, 3, 3, 2]))
//print(largestRectangle(h: [11, 11, 10, 10, 10]))
