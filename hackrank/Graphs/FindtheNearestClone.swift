//
//  FindtheNearestClone.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/06.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

class FindtheNearestClone {
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
    
    class Graph {
        class Node: Equatable {
            var data: Int
            var color : Int
            var adjacent: Array<Node>
            var marked : Bool
            var distance = 0
            init(_ data: Int) {
                self.data = data
                self.marked = false
                self.color = 0
                adjacent = Array<Node>()
            }
            
            
            static func == (lhs: Graph.Node, rhs: Graph.Node) -> Bool {
                return lhs.data == rhs.data && lhs.color == rhs.color
            }
        }
        var nodes = [Node]()
        
        init(_ size: Int) {
            for i in 0..<size {
                nodes.append(Node(i))
            }
        }
        
        func setColor(_ data: Int, color: Int) {

            nodes[data].color = color
        }
        
        func addEdge(i1: Int, i2: Int) {
            let n1 = nodes[i1]
            let n2 = nodes[i2]
            if !n1.adjacent.contains(n2) {
                n1.adjacent.append(n2)
            }
            if !n2.adjacent.contains(n1) {
                n2.adjacent.append(n1)
            }
        }
        
        func dfs(_ color: Int) -> Int {
            var root = nodes[0]
            for i in 0..<nodes.count {
                if nodes[i].color == color {
                    root = nodes[i]
                    break
                }
            }
            
            var stack = Stack<Node>()
            stack.push(element: root)
            root.marked = true
            root.distance = 0
            while !stack.isEmpty {
                let r = stack.pop()!
                for n in r.adjacent {
                    if n.marked == false {
                        n.marked = true
                        n.distance = r.distance + 1
                        if n.color == color {
                            return n.distance
                        }
                        stack.push(element: n)
                    }
                }
            }
            return -1
        }
    }
}

func findShortest(graphNodes: Int, graphFrom: [Int], graphTo: [Int], ids: [Int], val: Int) -> Int {
    // solve here
    let g = FindtheNearestClone.Graph(graphNodes)
    for i in 0..<graphFrom.count {
        g.addEdge(i1: graphFrom[i] - 1, i2: graphTo[i] - 1)
    }
    for i in 0..<ids.count {
        g.setColor(i, color: ids[i])
    }
    
    var idsArray = ids
    
    if !idsArray.contains(val) {
        return -1
    } else {
        idsArray.remove(at: val)
        if !idsArray.contains(val) {
            return -1
        }
    }

    return g.dfs(val)
}

//print(findShortest(graphNodes: 4, graphFrom: [1,1,4,], graphTo: [2,3,2,], ids: [1,2,1,1], val: 1))
//
//
//print(findShortest(graphNodes: 5, graphFrom: [1,1,2,3,], graphTo: [2,3,4,5,], ids: [1,2,3,3,2], val: 2))
