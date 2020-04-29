//
//  queue.swift
//  hackrank
//
//  Created by  sparrow on 2020/03/19.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

public struct Queue<T>: ExpressibleByArrayLiteral {
    
    public private(set) var elements = Array<T>()
    
    public var peek: T? {
        return elements.first
    }

    public mutating func enQueue(value: T) {
        elements.append(value)
    }

    public mutating func deQueue() -> T? {
        return isEmpty ? nil : elements.removeFirst()
    }
    public var isEmpty: Bool {
        return elements.isEmpty
    }
    
    public var count: Int {
        return elements.count
    }
    
    public init(arrayLiteral elements: T...) {
        self.elements = elements
    }
}
