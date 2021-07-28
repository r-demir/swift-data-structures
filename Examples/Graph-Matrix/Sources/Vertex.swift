//
//  Vertex.swift
//  Graph-Matrix
//
//  Created by ramazan demir on 28.07.2021.
//

import Foundation

public struct Vertex<T> {
    public let index: Int
    public let data: T
}

extension Vertex: Hashable where T: Hashable {}
extension Vertex: Equatable where T: Equatable {}


