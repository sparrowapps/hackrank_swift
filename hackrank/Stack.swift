//
//  Stack.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/03.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

public struct Stack<T> {
    private var elements = Array<T>()
    public init() {}
    
    public mutating func pop() -> T? {
        return self.elements.popLast()
    }
    
    public mutating func push(element: T) {
        self.elements.append(element)
    }
    
    public func peek() -> T? {
        return self.elements.last
    }
    
    public var isEmpty: Bool {
        return self.elements.isEmpty
    }
    
    public var count: Int {
        return self.elements.count
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        return self.elements.description + "stack data structure"
    }
}


extension Stack: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: T...) {
        self.init()
        for element in elements {
            self.elements.append(element)
        }
    }
}

public struct ArrayIterator<T>: IteratorProtocol {
 
    var currentElement: [T]
    init(elements: [T]) {
        self.currentElement = elements
    }
    
    public mutating func next() -> T? {
        if !self.currentElement.isEmpty {
            return self.currentElement.popLast()
        }
        return nil
    }
}
 
extension Stack: Sequence {
    public func makeIterator() -> ArrayIterator<T> {
        return ArrayIterator<T>(elements: self.elements)
    }
}




