//
//  ViewController.swift
//  FESwiftInterview
//
//  Created by FlyElephant on 2017/6/15.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        setUp()
        setUp6()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    private func setUp() {
        var arr = [1, 2, 3]
        swap(&arr[0], &arr[2])
        print("交换之后后果---\(arr)")
        
        var aarr = ["happy", "every", "day"]
        var barr : NSMutableArray = ["happy", "every", "day"]
        
        //1
        aarr[2] = "minute" //直接改变了aarr第二个元素的值
        barr[2] = "minute" //让barr第二个元素指向"minute"
        print("1---\(aarr)")
        print("1---\(barr)")
        
        aarr.removeLast()
        print("\(aarr)")
    }
    
    private func setUp1() {
        var dataSet = Set<Int>()
        dataSet.insert(1)
        dataSet.insert(1)
        dataSet.insert(2)
        dataSet.insert(2)
        dataSet.insert(3)
        dataSet.insert(3)
        print("FlyElephant:\(dataSet)")
    }
    
    
    private func setUp2() {
        let num = testMin(x: 10, y: 20)
        print("FlyElephant:\(num)")
    }
    
    private func setUp3() {
        let data = [1, 2, 3]
        let mapData = data.map({ "FlyElephant-\($0)" })
        print("映射数据:\(mapData)")
        
        let fiterData = data.filter({ $0 >= 2 })
        print("过滤数据:\(fiterData)")
        
        let sumData = data.reduce(0, { $0 + $1})
        print("求和数据:\(sumData)")
    }
    
    
    private func setUp4() {
        
        let data = [[1,2,3],[4,5,6]]
        let mapData = data.map({ $0.map{ $0 + 1 } })
        let flatMapData = data.flatMap({ $0.map{ $0 + 1 } })
        print("map数据:\(mapData)---flatMap数据:\(flatMapData)")
        
        let optionalData: [String?] = ["1", nil, "2", "3"]
        let optionalMap = optionalData.map({ $0 })
        let optionalFlatMap = optionalData.flatMap({ $0 })
        print("map数据:\(optionalMap)---flatMap数据:\(optionalFlatMap)")
        
        FELog("FlyElephant打印行号")
    }
    
    private func setUp5() {
        
        defer {
            print("执行----1")
        }
        
        print("执行----2")
        
        defer {
            print("执行----3")
        }
        
        print("执行----4")
        
        defer {
            print("执行----5")
        }
    }
    
    private func setUp6() {
        let str:String = "FlyElephant"
        
        let fromIndex = str.index(str.startIndex, offsetBy: 2)
        let endIndex = str.index(str.endIndex, offsetBy: -1)
        let range = fromIndex..<endIndex
        let result = str.substring(with: range)
        print("字符串截取:\(result)")
       
    }
    
    private func setUp7() {
     
        var stack = IntStack()
        stack.append(10)
    }
    
    func testMin<T: Comparable>(x: T, y: T) -> T {
        return x < y ? x : y
    }
    
    func FELog<T>(_ message:T, file:String = #file, function:String = #function,
               line:Int = #line) {
            let fileName = (file as NSString).lastPathComponent
            print("\(fileName):\(line) \(function) | \(message)")
    }
}

