//
//  ACMICPCTeam.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/10.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

//time out
/*
func acmTeam(topic: [String]) -> [Int] {
    var topicCount = [Int]()
    var ans = [Int]()
    for i in 0..<topic.count - 1 {
        for j in i + 1..<topic.count {
            topicCount.append(strOr(s1: topic[i], s2: topic[j]))
        }
    }
    
    let max = topicCount.max()!
    ans.append(max)
    let maxCount = topicCount.filter({ $0 == max }).count
    ans.append(maxCount)
    
    
    return ans
}

func strOr(s1: String, s2: String) -> Int {
    let sa1 = Array(s1)
    let sa2 = Array(s2)
    var count = 0
    for i in 0..<sa1.count {
        if sa1[i] == "1" || sa2[i] == "1" {
            count = count + 1
        }
    }
    return count
}
*/

