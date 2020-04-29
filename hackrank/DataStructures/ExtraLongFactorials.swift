//
//  ExtraLongFactorials.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/10.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

func extraLongFactorials(n: Int) -> Void {

    let x = factorial(n: 25)
    print(x)
}

func factorial(n: UInt64) -> UInt64 {
    if n == 1 {
        return 1
    } else {
        return n * factorial(n: n - 1)
    }
}

//extraLongFactorials(n: 25) //error 21
// python math.factorial(n) 허무
// swift 에서는 bigint 라이브러리를 이용해야 함
