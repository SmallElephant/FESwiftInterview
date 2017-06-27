//
//  BuyProtocol.swift
//  FESwiftInterview
//
//  Created by FlyElephant on 2017/6/16.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

protocol BuyProtocol: class {
    // 协议定义
    var buy : Int { get set }
}

class Person : BuyProtocol {
    var buy: Int = 0
}


protocol Container {
    associatedtype ItemType
    mutating func append(_ item: ItemType)
    var count: Int { get }
    subscript(i: Int) -> ItemType { get }
}

struct IntStack: Container {
    // original IntStack implementation
    var items = [Int]()
    
    mutating func push(_ item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
    // conformance to the Container protocol
    typealias ItemType = Int
    mutating func append(_ item: Int) {
        self.push(item)
    }
    var count: Int {
        return items.count
    }
    
    subscript(i: Int) -> Int {
        return items[i]
    }
}
