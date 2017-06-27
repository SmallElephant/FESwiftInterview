//
//  Extension.swift
//  FESwiftInterview
//
//  Created by keso on 2017/6/17.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

extension String {
    
    subscript(index:Int) -> Character {
        return self[self.characters.index(self.startIndex, offsetBy: index)]
    }
    
    func hasPrefix(_ prefix: String) -> (String) -> Bool {
        return { value in value.hasPrefix(prefix) }
    }
    
    func hasSuffix(_ suffix: String) -> (String) -> Bool {
        return { value in value.hasSuffix(suffix) }
    }
    
}

//extension Error {
//    var localizedDescription: String {
//        return (self as! NSError).localizedDescription
//    }
//}


extension Sequence where Iterator.Element == String {
    
    func contentRepeate(count:Int) -> String {
        
        var content = ""
        
        for data in self {
            content += data
        }

        var result = ""
        for _ in 0..<count {
            result += content
        }
        return result
    }
    
}

extension Collection where Iterator.Element == String {
    
    func contentRepeate(count:Int) -> String {
        
        var content = ""
        
        for data in self {
            content += data
        }
        
        var result = ""
        for _ in 0..<count {
            result += content
        }
        return result
    }
}


