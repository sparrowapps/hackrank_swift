//
//  TripleSum.swift
//  hackrank
//
//  Created by  sparrow on 2020/03/28.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

extension Array where Element: Hashable {
    var uniques: Array {
        var buffer = Array()
        var added = Set<Element>()
        for elem in self {
            if !added.contains(elem) {
                buffer.append(elem)
                added.insert(elem)
            }
        }
        return buffer
    }
}


// Complete the triplets function below.
func triplets(a: [Int], b: [Int], c: [Int]) -> Int {
    var res = 0
    
    let a1 = Array(Set(a)).sorted()
    let b1 = Array(Set(b)).sorted()
    let c1 = Array(Set(c)).sorted()
    
    var ai = 0
    var bi = 0
    var ci = 0
    
    while bi < b1.count {
        while ai < a1.count && a1[ai] <= b1[bi] {
            ai = ai + 1
        }
        
        while ci < c1.count && c1[ci] <= b1[bi] {
            ci = ci + 1
        }
        
        res = res + (ai * ci)
        bi = bi + 1
        
    }
    
    return res
}
