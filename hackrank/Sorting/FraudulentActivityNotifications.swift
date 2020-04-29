//
//  FraudulentActivityNotifications.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/08.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

/* time out
func activityNotifications(expenditure: [Int], d: Int) -> Int {

    var tempArray = [Int]()
    var notification = 0
    for i in 0..<(expenditure.count - d - 1) {
        for j in i..<i+d {
            tempArray.append(expenditure[j])
        }
        let avg = calculateMedian(array: tempArray)
        if Float(expenditure[i+d]) >= avg * 2 {
            notification = notification + 1
        }
        tempArray.removeAll()
    }
    
    return notification
}
 
 func calculateMedian(array: [Int]) -> Float {
     let sorted = array.sorted()
     if sorted.count % 2 == 0 {
         return Float((sorted[(sorted.count / 2)] + sorted[(sorted.count / 2) - 1])) / 2
     } else {
         return Float(sorted[(sorted.count - 1) / 2])
     }
 }

*/
/*
func activityNotifications(expenditure: [Int], d: Int) -> Int {
    //var tempArray = [Int]()
    var notification = 0
    for i in 0..<(expenditure.count - d - 1) {
        let median = calculateMedian(array: Array( expenditure[i..<i+d]))
        if Float(expenditure[i+d]) >= median * 2 {
            notification = notification + 1
        }
    }
    return notification
}

func calculateMedian(array: [Int]) -> Float {
    let sorted = array.sorted()
    if sorted.count % 2 == 0 {
        return Float((sorted[(sorted.count / 2)] + sorted[(sorted.count / 2) - 1])) / 2
    } else {
        return Float(sorted[(sorted.count - 1) / 2])
    }
}
*/
/*
func activityNotifications(expenditure: [Int], d: Int) -> Int {
    var notification = 0
    if d > expenditure.count {
        print("d big")
        return 0
    }
    
    let slice = expenditure[0..<d]
    var tempArray = Array(slice)
    for i in d..<expenditure.count {
        var median : Float = 0.0
        let sorted = tempArray.sorted()
        if d % 2 == 0 {
            median = Float((sorted[(sorted.count / 2)] + sorted[(sorted.count / 2) - 1])) / 2
        } else {
            median = Float(sorted[(sorted.count - 1) / 2])
        }
        if median * 2 <= Float(expenditure[i]) {
            notification = notification + 1
        }
        tempArray.removeFirst()
        tempArray.append(expenditure[i])
    }
    
    return notification
}
func calculateMedian(array: [Int]) -> Float {
    let sorted = array.sorted()
    if sorted.count % 2 == 0 {
        return Float((sorted[(sorted.count / 2)] + sorted[(sorted.count / 2) - 1])) / 2
    } else {
        return Float(sorted[(sorted.count - 1) / 2])
    }
}
*/

// 2 case timeout
extension RandomAccessCollection where Element : Comparable {
    func insertionIndex(of value: Element) -> Index {
        var slice : SubSequence = self[...]

        while !slice.isEmpty {
            let middle = slice.index(slice.startIndex, offsetBy: slice.count / 2)
            if value < slice[middle] {
                slice = slice[..<middle]
            } else {
                slice = slice[index(after: middle)...]
            }
        }
        return slice.startIndex
    }
}

class SortedArray {
    var queue = [Int]()
    var elements = [Int]()
    var c = 0
    var min : Int {
        return elements.first!
    }
    var max : Int {
        return elements.last!
    }
    var median: Float {
        if c % 2 == 0 {
            return getMedian2()
        } else {
            return getMedian1()
        }
    }
    
    init(elements: [Int] ) {
        self.queue = elements
        self.elements = elements.sorted()
        self.c = elements.count
    }
    
    func removeFirst() {
        let v = queue.removeFirst()
        if v == min {
            elements.removeFirst()
        } else if v == max {
            elements.removeLast()
        } else {
            let idx = binarySearch_for(array: elements, for: v)
            elements.remove(at: idx!)
        }
    }
    func add(e: Int) {
        queue.append(e)
        if e < min {
            elements.insert(e, at: 0)
        } else if e > max {
            elements.append(e)
        } else {
            let idx = elements.insertionIndex(of: e)
            elements.insert(e, at: idx)
        }
        
    }
    
    func getMedian1() -> Float {
        return Float(elements[(c - 1) / 2])
    }
    
    func getMedian2() -> Float {
        return Float((elements[(c / 2)] +
            elements[(c / 2) - 1])) / 2
    }
    

    func binarySearch_for (array: [Int],for value: Int) -> Int? {
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
}

func activityNotifications(expenditure: [Int], d: Int) -> Int {
    var notification = 0
    
    let slice = expenditure[0..<d]
    let sortedArray = SortedArray(elements: Array(slice))
    
    for i in d..<expenditure.count {
        if sortedArray.median * 2 <= Float(expenditure[i]) {
            notification = notification + 1
        }
        sortedArray.removeFirst()
        sortedArray.add(e: expenditure[i])
    }
    
    return notification
}

//print(activityNotifications(expenditure: [10, 20, 30, 40, 50], d: 3))
//print(activityNotifications(expenditure: [2, 3, 4, 2, 3, 6, 8, 4, 5], d: 5))

