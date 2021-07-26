//
//  Queue.swift
//  Examples
//
//  Created by ramazan demir on 26.07.2021.
//

import Foundation


//FIFO (First in, First out).
struct Queue{
    
    //MARK: Front(head/peek) <- |0|1|2|3|4|5|6|7|8|9| <- Back(rear/tail)
    
    var items: [String] = []
   
    var head: String? {
      return items.first
    }

    var tail: String? {
      return items.last
    }
    
    mutating func isEmpty() -> Bool {
        return items.isEmpty
    }
    
    //MARK: On back
    mutating func enqueue(_ item: String){
        items.append(item)
    }
    
    //MARK: From front
    mutating func dequeue() -> String? {
        return isEmpty() ? nil : items.removeFirst()
    }
    	
}
	
