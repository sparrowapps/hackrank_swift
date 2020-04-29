//
//  SherlockandSquares.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/10.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

/* sqrt 함수가 느리다. 0,1,4,9 만 보게 해도 ... timeout
func squares(a: Int, b: Int) -> Int {
    var count = 0
    for i in a...b {
        switch (i & 0x0f) {
            case 0,1,4,9:
                if isSqr(n: i) {
                    count = count + 1
                }
        default:
            break
        }
    }
    return count
}

func isSqr(n: Int) -> Bool {
    var s = Int(sqrt(Double(n)) + 0.5)
    if n == (s * s) {
        return true
    } else {
        return false
    }
}
*/

//신박한 방식 a 까지 x를 늘려가고 b까지 x * x 가 b보다 작을대 count를 세어 끝!
func squares(a: Int, b: Int) -> Int {
    var count = 0
    var x = 0
    while x * x < a {
        x = x + 1
    }
    while x * x <= b {
        count = count + 1
        x = x + 1
    }

    return count
}



//print(squares(a: 3, b: 9))
