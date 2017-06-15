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
        setUp3()
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
    
    func testMin<T: Comparable>(x: T, y: T) -> T {
        return x < y ? x : y
    }
}

