//
//  SavethePrisoner.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/10.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation
// 교도소 사탕
// n 수감자 수
// s 시작 위치
// m 사탕의 개수 마지막 사탕은 맛없음
// 풀이 p = 사탕 + 시작 -1 마지막 사탕 포지션은 맛없음
// p가 수감자 보다 많으면 p % n == 0 돌고 돌아 마지막 번째 사람
// p % n 번째 사람
// p가 n 보다 적으면 걍 p번째 사람
func saveThePrisoner(n: Int, m: Int, s: Int) -> Int {
    let p = m + s - 1
    if p > n {
        if p % n == 0 {
            return n
        }
        return p % n
    }
    return p
}
