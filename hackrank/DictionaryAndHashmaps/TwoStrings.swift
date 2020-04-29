//
//  TwoStrings.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/07.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

func twoStrings(s1: String, s2: String) -> String {

    var ans = "NO"
    
    var dict = [String: Int]()
    
    for s in s1 {
        if let v = dict[String(s)] {
            dict.updateValue(v + 1, forKey: String(s))
        } else {
            dict.updateValue(1, forKey: String(s))
        }
    }
    
    for s in s2 {
        if let v = dict[String(s)] {
            ans = "YES"
            break
        }
    }
    return ans
}
