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
        setUp15()
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
        
        typealias EmptyBlock = (String) -> Void
        
        typealias SumBlock = (Int,Int) -> Int
        
        let sumBlock:SumBlock = {
            (a:Int,b:Int) -> Int in
            return a + b
        }
        
        let result = sumBlock(100, 100)
        print("闭包的结果:\(result)")
    }
    
    private func setUp8() {
        var student:Student? = Student(a: 27, b: 10)
        print("年龄:\(student!.age)")
        
        var studentB:Student? = student!.setStudentAge(a: 28)
        print("年龄:\(student!.age)---studentB年龄:\(studentB!.age)")
        
        student = nil
        studentB = nil
        
        student?.setStudentAge(a: 29)
    }
    
    private func setUp9() {
        let str:String? = "test"
        let str1:Optional<String> = "test"
        
        print("\(String(describing: str))---\(String(describing: str1))")
        
        print("\(str1![1])")
    }
    
    private func setUp10() {
        let student:Student = Student(a: 10, b: 10)
        print("\(student.name)")
    }
    
    private func setUp11() {
        
        let  options:UIViewAnimationOptions = [UIViewAnimationOptions.layoutSubviews,UIViewAnimationOptions.allowUserInteraction]
        print("可选项:\(options)")
        
    }
    
    private func setUp12() {
        let multipleOptions: MyOptions = [.firstOption, .secondOption]
        if multipleOptions.contains(.secondOption) {
            print("包含---SecondOption")
        }
        let allOptions = MyOptions(rawValue: 7)
        if allOptions.contains(.thirdOption) {
            print("FlyElephant---包含ThirdOption")
        }
    }
    
    private func setUp13() {
        var mutableArray = [1,2,3]
        for _ in mutableArray {
            
            mutableArray.removeLast()
            print("结果:\(mutableArray)")
        }
    }
    
    private func setUp14() {
        
        let result = ["a","b","c"].contentRepeate(count: 2)
        print("FlyElephant:\(result)")
    }
    
    private func setUp15() {
        let array = [Int].init(repeating: 1, count: 10)
        let arraySlice = array[5...8]
        print("\(arraySlice)")
    }
    
    private func setUp16() {



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

