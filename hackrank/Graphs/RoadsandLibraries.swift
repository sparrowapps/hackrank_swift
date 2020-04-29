//
//  RoadsandLibraries.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/06.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

func roadsAndLibraries(n: Int, c_lib: Int, c_road: Int, cities: [[Int]]) -> Int {
    let g = Graph(n)

    var libCount = 0
    for c in cities {
        g.addEdge(i1: c[0] - 1, i2: c[1] - 1)
    }
    
    if c_lib < c_road {
        return c_lib * n
    }

    while g.getUnVistited() != -1 {
        g.dfs(g.idx)
        libCount = libCount + 1
    }
    
    return c_lib * libCount + c_road * (n - libCount)
}
