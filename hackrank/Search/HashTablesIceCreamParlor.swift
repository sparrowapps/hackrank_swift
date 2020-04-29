//
//  HashTablesIceCreamParlor.swift
//  hackrank
//
//  Created by  sparrow on 2020/03/30.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

func whatFlavors(cost: [Int], money: Int) -> Void {
    var dic1 = [Int:Int]()
    var dic2 = [Int:Int]()
    
    var idx = 1
    for c in cost {
        dic1.updateValue(money - c, forKey: c)
        if money - c != c {
            dic2.updateValue(idx, forKey: c)
        } else {
            dic2.updateValue(idx, forKey: c)
        }
        
        idx = idx + 1
    }

    for idx in 0..<cost.count {
        let t = dic1[cost[idx]]
        if let i = dic2[t!] {
            if idx + 1 != i {
                print(idx + 1, i)
                break
            }
        }
    }
}
