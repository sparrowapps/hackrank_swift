//
//  Fibonacci.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/07.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

func fibonacci (n: Int) -> Int {
    // Write your code here.
    if n <= 1 { return n }
    return fibonacci(n: n - 1) + fibonacci(n: n - 2)

}
