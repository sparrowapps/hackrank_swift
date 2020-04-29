//
//  SequenceEquation.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/10.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

func permutationEquation(p: [Int]) -> [Int] {
    var ans = [Int](repeating: 0, count: p.count)
    for i in 0..<p.count {
        ans[p[p[i]-1]-1] = i + 1
    }
    return ans
}
//print(permutationEquation(p: [2,3,1]))
//231
