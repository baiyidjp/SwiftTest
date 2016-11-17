//
//  PersonD.swift
//  SwiftTest
//
//  Created by tztddong on 2016/11/15.
//  Copyright © 2016年 dongjiangpeng. All rights reserved.
//

import UIKit
/*
    1. 定义模型属性的时候 如果是对象  通常都是可选的
    -- 在需要的时候创建
    -- 避免写构造函数 简化代码
    2. 定义模型如果是基本数据类型 不能设置成可选的 而且需要设置初始值 否则KVC会崩溃
    3. 如果使用KVC赋值 不能使用私有属性 private
 
    4. 在使用KVC方法之前 应该先调用super.init实例化
 */
class PersonD: NSObject {
    
    var name: String?
    
    //给基本数据类型做初始化
    var age: Int = 0
    //可选  使用KVC无法找到age这个key值
//    var age: Int?
    
    //私有属性 使用KVC设置值是已无法设置
//    private var title: String?
    
    //重载构造函数 使用字典为本类设置初始值
    init(dict: [String : Any]) {
        ///Use of 'self' in method call 'setValuesForKeys' before super.init initializes self
        //下面的KVC方法是调用的OC的方法  在运行时给对象发送消息  要求对象已经实例化完成  所以需要先调用super.init
        super.init()
        
        setValuesForKeys(dict)
    }
    
    //重写父类的方法   防止字典的key本类中不存在
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        //没有 super
    }
    
}
