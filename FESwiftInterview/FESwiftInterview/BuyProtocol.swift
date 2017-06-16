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
