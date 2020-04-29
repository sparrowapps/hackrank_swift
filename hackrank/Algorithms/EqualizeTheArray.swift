//
//  EqualizeTheArray.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/10.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

func equalizeArray(arr: [Int]) -> Int {
    var dic = [Int:Int]()
    for a in arr {
        if let v = dic[a] {
            dic.updateValue(v + 1, forKey: a)
        } else {
            dic.updateValue(1, forKey: a)
        }
    }
    return arr.count - dic.values.max()!
}
//print(equalizeArray(arr: [3,3,2,1,3]))
