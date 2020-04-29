//
//  TimeComplexPrimality.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/07.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

//소수 판별
func primality(n: Int) -> String {
    if n < 2 {
        return "Not prime"
    } else if n <= 3 {
        return "Prime"
    } else if n % 2 == 0 || n % 3 == 0 {
        return "Not prime"
    } else {
        for i in 3..<Int( sqrt(Double(n)) + 1) {
            if n % i == 0 {
                return "Not prime"
            }
        }
    }
    return "Prime"
}
