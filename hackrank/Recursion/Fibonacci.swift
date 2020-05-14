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

func fibonacciMemo(n: Int) -> Int {
    var cache = Array.init(repeating: 0, count: 1000)
    cache[0] = 0
    cache[1] = 1
    cache[2] = 1
    
    if n <= 1 {
        return n
    } else if cache[n] != 0 {
        return cache[n]
    } else {
        cache[n] = fibonacciMemo(n: n - 1) + fibonacciMemo(n: n - 2)
        return cache[n]
    }
}
