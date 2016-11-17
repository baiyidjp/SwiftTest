//
//  Person.swift
//  SwiftTest
//
//  Created by tztddong on 2016/11/15.
//  Copyright © 2016年 dongjiangpeng. All rights reserved.
//

import UIKit

class Person: NSObject {
    
    var name: String
    
    //重写
//    override init() {
//        
//        print("person init")
//        
//        name = "董"
//    }
    
    //重载  名字一样 参数和个数不一样  好处是可以给自己的属性在外部设置初始值
    
    init(name: String) {
        
        self.name = name
        super.init()
    }
}
