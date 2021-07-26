//
//  main.swift
//  Examples
//
//  Created by Ramazan Demir on 29.06.2021.
//

import Foundation 


var list = LinkedList()
list.add(value: "A")
list.add(value: "B")
list.add(value: "C")
//list.add(value: "D")
//list.add(value: "E")
list.traverse()

var lastRemoved = list.removeLast()
list.traverse()
