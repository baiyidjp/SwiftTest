//
//  FuncViewController.swift
//  SwiftTest
//
//  Created by tztddong on 2016/11/15.
//  Copyright © 2016年 dongjiangpeng. All rights reserved.
//

import UIKit

class FuncViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //        print(sum(x: 10, y: 10))
        //        print(sum1(num1: 20, num2: 30))
        //        print(sum2(20, 100))
        //        print(sum3())
        //        print(sum3(x: 10, y: 20))
        //        print(sum3(x: 10))
        //        print(sum3(y: 20))
        //        print(demo1())
        //        print(demo2())
        //        print(demo3())
        //        bibao()
        loadGCD { (result)  in
            print("获取到数据了 -- \(result)")
        }
        
        //循环引用 [weak self]
    }

    // MARK: GCD
    func loadGCD(completion: @escaping (_ dataData: [String]) ->()) -> () {
        
        DispatchQueue.global().async {
            print("耗时操作 \(Thread.current)")
            
            //休眠
            Thread.sleep(forTimeInterval: 1.0)
            
            //获取数据
            
            let data = ["头条","八卦","出大事了"]
            
            //主队列回调
            DispatchQueue.main.async {
                print("主队列 更新UI \(Thread.current)")
                
                completion(data)
            }
        }
    }
    
    // MARK: 闭包
    /*
     闭包 -- 提前准备好的代码  在需要的时候执行  可以当做参数传递
     */
    
    func bibao() -> () {
        
        // 1.最简单的闭包
        // () -> () 没有参数没有返回值的函数
        let b1 = {
            
            print("hello b1")
        }
        //执行闭包
        b1()
        
        
        // 2.带参数的闭包
        // 闭包中 参数 返回值 代码都是写在{}中
        // 需要一个关键字'in' 分隔定义和实现
        // (Int) -> ()
        let b2 = { (x: Int) -> () in
            print(x)
        }
        b2(2)
        
        // 3.带参数带返回的闭包
        // (Int) -> Int
        let b3 = { (x: Int) -> Int in
            
            return x+10
            
        }
        
        print(b3(2))
        
    }
    
    func block() -> () {
        
        // f类型 (Int, Int) -> Int
        // 1> 定义一个常量记录 函数 block模式
        let f = sum
        
        print(f(20 , 20))
    }
    
    //MARK: 函数
    
    ///
    ///
    /// - Parameters:
    ///   - x: 参数
    ///   - y: 参数
    /// - Returns: 返回类型
    func sum(x: Int ,y: Int) -> Int {
        return x+y
    }
    
    // 外部参数
    // 就是在形参前加一个名字 不会影响函数内部的细节  会让外部调用方看起来更加直观
    func sum1(num1 x:Int , num2 y:Int) -> Int {
        return x+y
    }
    
    // 外部参数如果使用下划线 会在外部调用函数时忽略形参的名字
    // '_'可以忽略任意不感兴趣的
    func sum2(_ x:Int , _ y:Int) -> Int {
        
        // Immutable value 'i' was never used; consider replacing with '_' or removing it
        for i in 0..<10 {
            print("hello world")
        }
        
        
        return x+y
    }
    
    // MARK: 默认值
    // 通过给参数设置默认值  在调用时可以任意组合参数 如果不指定就使用默认值
    func sum3(x:Int = 1 ,y: Int = 2) -> Int {
        return x+y
    }
    
    // MARK: 无返回值
    // 主要用在闭包
    /*
     - 直接省略
     - Void
     - ()
     */
    
    func demo1() {
        print("hi")
    }
    
    func demo2() -> Void {
        print("hi hi ")
    }
    //   执行    输出 目标
    func demo3() -> () {
        print("hi hi hi")
    }


}
