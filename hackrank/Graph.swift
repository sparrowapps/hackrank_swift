//
//  Graph.swift
//  hackrank
//
//  Created by  sparrow on 2020/04/05.
//  Copyright © 2020 SPARROWAPPS. All rights reserved.
//

import Foundation

class Graph {
    class Node : Equatable {
        var data: Int
        var adjacent: Array<Node>
        var marked : Bool
        init(_ data: Int) {
            self.data = data
            self.marked = false
            adjacent = Array<Node>()
        }
        
        static func == (lhs: Graph.Node, rhs: Graph.Node) -> Bool {
            return lhs.data == rhs.data
        }
    }

    var nodes = [Node]()
    var idx = 0
    func getUnVistited() -> Int {
        for i in idx..<nodes.count {
            if nodes[i].marked == false {
                idx = i
                return i
            }
        }
        return -1
    }
    
    init(_ size: Int) {
        
        for i in 0..<size {
            nodes.append(Node(i))
        }
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
    
    func dfs() {
        dfs(0)
    }
    
    func dfs(_ index: Int) {
        let root = nodes[index]
        var stack = Stack<Node>()
        stack.push(element: root)
        root.marked = true
        while !stack.isEmpty {
            let r = stack.pop()!
            for n in r.adjacent {
                if n.marked == false {
                    n.marked = true
                    stack.push(element: n)
                }
            }
            //visit(r)
        }
    }
    
    func bfs() {
        bfs(0)
    }
    
    func bfs(_ index: Int) {
        let root = nodes[index]
        var queue = Queue<Node>()
        queue.enQueue(value: root)
        root.marked = true
        while !queue.isEmpty {
            let r = queue.deQueue()!
            for n in r.adjacent {
                if n.marked == false {
                    n.marked = true
                    queue.enQueue(value: n)
                }
            }
            visit(r)
        }
    }
    
    func dfsR(_ r: Node?) {
        if r == nil {
            return
        }
        r?.marked = true
        visit(r!)
        for n in r!.adjacent {
            if n.marked == false {
                dfsR(n)
            }
        }
    }
    
    func dfsR(_ index: Int) {
        let r = nodes[index]
        dfsR(r)
    }
    
    func dfsR() {
        dfsR(0)
    }
    
    func visit(_ n: Node) {
        print("\(n.data) ",terminator: "|")
    }
}



/*
public class Graph {
    public class Vertex: Equatable {
        public var label: String
        public var neighbors: Array<Edge>
        public var color: String?
        public var predecessor: Vertex?
        public var distance: Int?
        public var discoveredTimestamp: Int?
        public var finishedTimestamp: Int?
        public init(_ label: String) {
            self.label = label
            self.neighbors = Array<Edge>()
        }
        
        public static func == (lhs: Vertex, rhs: Vertex) -> Bool {
            return lhs.label == rhs.label
        }
    }

    public class Edge {
        public var neighbor: Vertex
        public var weight: Int?
        
        public init(_ neighbor: Vertex) {
            weight = 0
            self.neighbor = neighbor
        }
    }
    
    public var vertexs: Array<Vertex>
    public var isDirected: Bool
    
    public init() {
        vertexs = Array<Vertex>()
        isDirected = true
    }
    
    public func addVertex(_ label: String) -> Vertex {
        let childVertex = Vertex(label)
        
        vertexs.append(childVertex)
        
        return childVertex
    }
    
    public func addNode(_ label: String) -> Vertex {
        return addVertex(label)
    }
    
    public func addEdge(from source: Vertex, to destination: Vertex) {
        let newEdge = Edge(destination)
        
        source.neighbors.append(newEdge)
        destination.neighbors.append(Edge(source))
    }
    
    //bfs queue
    func bredthFirstSearch(graph: Graph, source: Vertex) {
        var visitedVertexs = Queue<Vertex>()
        
        for vertex in graph.vertexs {
            vertex.color = "White"
            vertex.distance = nil
            vertex.predecessor = nil
        }
        
        source.color = "Gray"
        source.distance = 0
        source.predecessor = nil
        visitedVertexs.enQueue(value: source)
        
        while !visitedVertexs.isEmpty {
            if let currentVertex = visitedVertexs.deQueue() {
                for edge in currentVertex.neighbors {
                    if edge.neighbor.color == "White" {
                        edge.neighbor.color = "Gray"
                        edge.neighbor.distance = currentVertex.distance! + 1
                        edge.neighbor.predecessor = currentVertex
                        visitedVertexs.enQueue(value: edge.neighbor)
                    }
                }
                currentVertex.color = "Black"
            }
        }
    }
    
    //stack or recursive
    func depthFirstSearch(graph: Graph) {
        for vertex in graph.vertexs {
            vertex.color = "White"
            vertex.predecessor = nil
        }
        
        var timestamp = 0
        for vertex in graph.vertexs {
            if vertex.color == "White" {
                dfsVisit(vertex: vertex, timestamp: &timestamp)
            }
        }
    }

    func dfsVisit(vertex: Vertex, timestamp: inout Int) {
        timestamp = timestamp + 1
        vertex.discoveredTimestamp = timestamp
        vertex.color = "Gray"
        
        for edge in vertex.neighbors {
            if edge.neighbor.color == "White" {
                edge.neighbor.predecessor = vertex
                dfsVisit(vertex: edge.neighbor, timestamp: &timestamp)
            }
        }
        
        vertex.color = "Black"
        timestamp = timestamp + 1
        vertex.finishedTimestamp = timestamp
    }

}




*/
