//
//  RunPreson.swift
//  SwiftTest
//
//  Created by tztddong on 2016/11/17.
//  Copyright © 2016年 dongjiangpeng. All rights reserved.
//

import UIKit

class RunPreson: NSObject {
    
    var name: String?
    var className: String?
    var age: Int = 0
    
    //使用运行时获取对象的属性列表
    class func getPropertyList() -> [String] {
        
        var outCount: UInt32 = 0
        
        let propertyList = class_copyPropertyList(self, &outCount)
        
        print("一共\(outCount)个属性")
        
        //遍历数组
        
//        for i in 0..<Int(outCount) {
//            
//            let property = propertyList?[i]
//            
//            //获取属性的名字  c语言的字符串
//            let cName = property_getName(property!)
//            
//            //转换成 String 的字符串
//            let name = String(utf8String: cName!)
//            
//            print(name ?? "")
//        }
        for i in 0..<Int(outCount) {
            
            //使用守护 判断是否有值 只要一个没有值就可以直接遍历下一个 有值直接打印
            guard let property = propertyList?[i],
                  let cName = property_getName(property),
                  let name = String(utf8String: cName)
            else {
                
                continue
            }
            
            print(name)
        }
        //释放C语言对象
        free(propertyList)
        return []
    }
    
}
