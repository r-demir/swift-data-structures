//
//  Edge.swift
//  Graph-Matrix
//
//  Created by ramazan demir on 28.07.2021.
//

import Foundation

public enum EdgeType {
    case directed
    case undirected
}

public struct Edge<T> {
    public let source: Vertex<T>
    public let destination: Vertex<T>
    public let weight: Double?
}





