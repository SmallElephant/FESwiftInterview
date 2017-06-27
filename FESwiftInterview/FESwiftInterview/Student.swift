//
//  Student.swift
//  FESwiftInterview
//
//  Created by keso on 2017/6/17.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation



enum HomeworkError : Int, Error {
    case forgotten
    case lost
    case dogAteIt
}

struct MyOptions : OptionSet {
    let rawValue: Int
    
    static let firstOption  = MyOptions(rawValue: 1 << 0)
    static let secondOption = MyOptions(rawValue: 1 << 1)
    static let thirdOption  = MyOptions(rawValue: 1 << 2)
}

@objc(TestFlyElephant)
class 测试 : NSObject {
    
}


class Student {
    
    var age:Int = 0
    var b:Int = 0
    
    lazy var name: String = {
        print("lazy执行")
        return "FlyElephant"
    }()
    
    init(a:Int,b:Int) {
        self.age = a
        self.b = b
    }
    
    @discardableResult
    func setStudentAge(a:Int) -> Self {
        self.age = a
        return self
    }
    
    class func test() { }
    
    deinit {
        print("Student deinit")
    }
}
