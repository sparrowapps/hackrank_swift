//
//  BinarySearch.swift
//  hackrank
//
//  Created by  sparrow on 2020/03/19.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

public extension RandomAccessCollection where Element: Comparable {
    func binarySearch(for value: Element, in range: Range<Index>? = nil) -> Index? {
        let range = range ?? startIndex..<endIndex
        guard range.lowerBound < range.upperBound else { return nil }
        let size = distance(from: range.lowerBound, to: range.upperBound)
        let middle = index(range.lowerBound, offsetBy: size / 2)
        if self[middle] == value {
            return middle
        }else if self[middle] > value {
            return binarySearch(for: value, in: range.lowerBound..<middle)
        }else {
            return binarySearch(for: value, in: index(after: middle)..<range.upperBound)
        }
    }
}

public func binarySearch_for (array: [Int],for value: Int) -> Int? {
    var startIndex = 0
    var endIndex = array.count - 1
    
    while startIndex <= endIndex {
        let middleIndex = (startIndex + endIndex) / 2
        if value == array[middleIndex]{
            return middleIndex
        } else if array[middleIndex] > value {
            endIndex = middleIndex - 1
        } else if array[middleIndex] < value {
            startIndex = middleIndex + 1
        }
    }
    return -1
}

public func binarySearch_recur (array: [Int],
                                for value: Int,
                                startIndex: Int? = nil,
                                endIndex: Int? = nil) -> Int? {
    var startIndex = startIndex ?? 0
    var endIndex = endIndex ?? array.count - 1
    var middleIndex: Int {
        return (startIndex + endIndex) % 2 == 0 ? (startIndex + endIndex) / 2 : (startIndex + endIndex + 1) / 2
    }
    guard startIndex <= endIndex else { return -1 }
    if value == array[middleIndex] {
        return  middleIndex
    } else if array[middleIndex] > value {
        endIndex = middleIndex - 1
        
        return binarySearch_recur(array: array, for: value, startIndex: startIndex, endIndex: endIndex)
    } else if array[middleIndex] < value {
        startIndex = middleIndex + 1
        return binarySearch_recur(array: array, for: value, startIndex: startIndex, endIndex: endIndex)
    } else { return -1 }
}
