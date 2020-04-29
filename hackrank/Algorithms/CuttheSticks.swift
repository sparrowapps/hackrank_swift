//
//  File.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/10.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

func cutTheSticks(arr: [Int]) -> [Int] {
    var array = arr
    var ans = [Int]()
    
    while array.count != 0 {
        ans.append(array.count)
        let min = array.min()!
        array = array.map{ $0 - min }
        array = array.filter{ $0 != 0 }
    }
    return ans
}

//print(cutTheSticks(arr: [5,4,4,2,2,8]))
