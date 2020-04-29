//
//  AlternatingCharacters.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/08.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

func alternatingCharacters(s: String) -> Int {
    var d = 0
    let strElement = Array(s)
    for i in 0..<(strElement.count - 1) {
        if strElement[i] == strElement[i+1] {
            d = d + 1
        }
    }
    return d
}
//print(alternatingCharacters(s: "AAABBB"))
