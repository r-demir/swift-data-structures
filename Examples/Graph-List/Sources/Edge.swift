//
//  Edge.swift
//  Graph-List
//
//  Created by ramazan demir on 28.07.2021.
//

import Foundation
    
public enum EdgeType {
  case directed, undirected
}

public struct Edge<T: Hashable> {
  public var source: Vertex<T> // 1
  public var destination: Vertex<T>
  public let weight: Double? // 2
}

extension Edge: Hashable {
  
  public var hashValue: Int {
      return "\(source)\(destination)\(weight)".hashValue
  }
  
  static public func ==(lhs: Edge<T>, rhs: Edge<T>) -> Bool {
    return lhs.source == rhs.source &&
      lhs.destination == rhs.destination &&
      lhs.weight == rhs.weight
  }
}

