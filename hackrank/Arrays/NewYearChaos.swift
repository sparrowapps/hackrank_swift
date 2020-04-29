//
//  NewYearChaos.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/08.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation
func minimumBribes(q: [Int]) -> Void {
    var brib = 0
    for i in 0..<q.count {
        if q[i] - ( i + 1 ) > 2 {
            print("Too chaotic")
            return
        }
        
        let start = max(0, q[i] - 2)
        if start < i {
            for j in start..<i {
                if q[j] > q[i] {
                    brib = brib + 1
                }
            }
        }
    }
    print(brib)
}

//minimumBribes(q: [5,1,2,3,7,8,6,4])
//minimumBribes(q: [1,2,5,3,7,8,6,4])
//
//
//minimumBribes(q: [2,1,5,3,4])
//minimumBribes(q: [2,5,1,3,4])
