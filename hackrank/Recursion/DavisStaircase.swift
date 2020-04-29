//
//  DavisStaircase.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/07.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

/* time limit
func stepPerms(n: Int) -> Int {
    if n ==  1 {
        return 1
    } else if n == 2 {
        return 2
    } else if n == 3 {
        return 4
    } else {
        return (stepPerms(n: n - 1) + stepPerms(n: n - 2) + stepPerms(n: n - 3)) % 10000000007
    }
}
*/

var dict  = [0:0, 1:1, 2:2, 3:4]
func stepPerms(n: Int) -> Int {
    
    if dict.keys.contains(n) {
        return dict[n]!
    }
    let result = stepPerms(n: n - 3) + stepPerms(n: n - 2) + stepPerms(n: n - 1)
    dict.updateValue(result, forKey: n)
    return dict[n]!
}
