//
//  JumpingontheClouds.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/10.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation
//돌고 돌아서 처음 위치 0가 될때 까지 계속 while ~
func jumpingOnClouds(c: [Int], k: Int) -> Int {
    var e = 100
    var j = k % c.count
    e = e - (c[j] * 2 + 1)
    while j != 0 {
        j = (j + k) % c.count
        e = e - (c[j] * 2 + 1)
    }
    
    return e
}
//print(jumpingOnClouds(c: [1,1,1,0,1,1,0,0,0,0], k: 3))
//80
