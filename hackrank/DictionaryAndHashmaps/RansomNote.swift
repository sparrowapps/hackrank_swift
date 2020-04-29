//
//  RansomNote.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/07.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation
func checkMagazine(magazine: [String], note: [String]) -> Void {
    var dict = [String: Int]()
    var ans = "Yes"
    for w in magazine {
        if let v = dict[w] {
            dict.updateValue(v + 1, forKey: w)
        } else {
            dict.updateValue(1, forKey: w)
        }
    }
    
    for n in note {
        if let v = dict[n] {
            if v == 0 {
                ans = "No"
                break
            }
            dict.updateValue(v - 1, forKey: n)
        } else {
            ans = "No"
            break
        }
    }
    
    print(ans)
}

//checkMagazine(magazine: ["give","me","on","grand","today","night"], note:
//["give","one","grand","today"])
