//
//  Student.swift
//  SwiftTest
//
//  Created by tztddong on 2016/11/15.
//  Copyright © 2016年 dongjiangpeng. All rights reserved.
//

import UIKit

class Student: Person {
    
    var num: String
    
//    override init() {
//        
//        print("studetn init")
//        
//        num = "001"
//        
//        super.init()
//    }
    
    init(name: String ,num: String) {
        
        self.num = num
        
        super.init(name: name)
    }

}
