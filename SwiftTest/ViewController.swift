//
//  ViewController.swift
//  SwiftTest
//
//  Created by tztddong on 2016/11/7.
//  Copyright © 2016年 dongjiangpeng. All rights reserved.
//

import UIKit

/// 在swift中 在同一个项目中(默认在同一个命名空间) 所有的的类都是共享的 不需要 import  所有对象的 属性var 也可以访问
class ViewController: UIViewController {
    
    
    //MARK: -视图加载
    
    /// 文档注释  option + cmd + /
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 实例化 person
        // () 代表OC中的 alloc init
        // swift 中代表 构造函数 init()
        // 
//        let p = Person()
//        let p1 = Person(name: "Swift")
        
//        print(p1.name)
        
//        let s = Student()
//        let s1 = Student(name: "江", num: "009")
//        
//        print(s1.name + "---" + s1.num)
//        
//        let p2 = PersonD(dict: ["name" : "jiang","age" : "100","title": "Boss"])
//        
//        print("\(p2.name) \(p2.age)")
//        
//        let s2 = StudentD(dict: ["name" : "jiang","age" : "100","num": "100"])
//        
//        print("\(s2.name) \(s2.age) \(s2.num)")
        
        print(RunPreson.getPropertyList())
    }
    
}

