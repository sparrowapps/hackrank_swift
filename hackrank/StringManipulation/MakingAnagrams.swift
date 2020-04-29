//
//  MakingAnagrams.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/08.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

func makeAnagram(a: String, b: String) -> Int {
    var sortedA = a.sorted()
    var sortedB = b.sorted()
    
    var idx = 0
    for ae in sortedA {
        if sortedB.contains(ae) {
            idx = sortedA.binarySearch(for: ae)!
            sortedA.remove(at: idx)
            idx = sortedB.binarySearch(for: ae)!
            sortedB.remove(at: idx)
        }
    }
    
    return sortedB.count + sortedA.count
}

//print(makeAnagram(a: "fcrxzwscanmligyxyvym", b: "jxwtrhvujlmrpdoqbisbwhmgpmeoke"))
