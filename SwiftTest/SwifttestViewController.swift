//
//  SwifttestViewController.swift
//  SwiftTest
//
//  Created by tztddong on 2016/11/8.
//  Copyright © 2016年 dongjiangpeng. All rights reserved.
//

import UIKit

class SwifttestViewController: UIViewController {

    //MARK: -视图加载
    
    /// 文档注释  option + cmd + /
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //1.创建视图
        let v = UIView(frame: CGRect(x: 0, y: 20, width: 200, height: 200))
        v.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)  //FIXME: 修改颜色
        view.addSubview(v)
        
        //按钮
        
        let btn = UIButton(type: .contactAdd)
        btn.frame = CGRect(x: 20, y: 20, width: 30, height: 30) //TODO: FRMAE
        v.addSubview(btn)
        btn.addTarget(self, action: #selector(clickBtn), for: .touchUpInside)
        
        
        //头像
        let imageH = UIImageView(image: #imageLiteral(resourceName: "Icon-Small-50.png"))
        imageH.center = view.center
        view.addSubview(imageH)
        
        dictdemo()
    }
    
    //MARK: 字典
    
    func dictdemo() -> () {
        
        //TODO: 定义
        var dict: [String : Any] = ["name":"长","age":23]
        print(dict)
        //字典数组
        //[[String : Any]] 常用的类型
        let array: [[String : Any]] = [
            ["name":"长","age":23] ,
            ["name":"长","age":223]
        ]
        print(array)
        print("------")
        //TODO: 增删改
        //增 如果KEY不存在就是新增
        dict["ttt"] = "大哥"
        print(dict)
        //改 如果KEY不存在就是修改
        dict["name"] = "改改"
        print(dict)
        //删 直接给定KEY值删除
        //hash 哈希 就是将字符串变成唯一的整数 便于查找 提高字典遍历的速度
        //        dict.removeValue(forKey: "ttt")
        print(dict)
        print("------")
        //TODO: 遍历
        for d in dict {
            print("\(d.key) \(d.value)")
        }
        print("------")
        for (k,v) in dict {
            print("\(k) \(v)")
        }
        //TODO: 合并
        print("------")
        let dict1: [String : Any] = ["dictionary":"1111","dict1":22,"name":"合并"]
        //字典不能相加
        //遍历dict1 一次添加到dict
        //如果KEY存在 则修改 不存在新增
        for d in dict1 {
            dict[d.key] = dict1[d.key]
        }
        print(dict)
    }
    
    
    //MARK: 数组
    
    func arraydemo() -> () {
        
        var array = ["zhangsan","你好","xiao命"]
        print(array)
        //
        //        let array1 = [1,2,3]
        //        print(array1)
        //
        //        let p = CGPoint(x: 20, y: 30)
        //        let array3 = [p]
        //        print(array3)
        //
        //        let array2 = ["混合",2,p] as [Any]
        //        print(array2)
        //
        //
        //        print(array[0])
        //TODO: 遍历
        //1.按照下标取
        //        print("---按照下标遍历")
        //        for i in 0..<array.count {
        //            print(array[i])
        //        }
        //        //2.for in 遍历元素
        //        print("---按照for in遍历")
        //        for s in array {
        //            print(s)
        //        }
        //        //3.枚举遍历
        //        print("---同时遍历下标和元素")
        //        //元组类型
        //        for s in array.enumerated() {
        //            print("\(s.offset) \(s.element)")
        //        }
        //
        //        //4.枚举遍历2
        //        print("---同时遍历下标和元素2")
        //        //元组类型
        //        //n 就是索引 s 就是String
        //        //其中n/s可以随意写
        //        for (n,s) in array.enumerated() {
        //            print("\(n) \(s)")
        //        }
        //
        //        //5.反序遍历元素
        //        print("---反序遍历元素")
        //        for s in array.reversed() {
        //            print(s)
        //        }
        //
        //        //4.反序遍历---枚举遍历
        //        print("---同时遍历下标和元素(反序遍历)")
        //        //元组类型
        //        //n 就是索引 s 就是String
        //        //其中n/s可以随意写
        //        //要先枚举 在反序 否则下标不对
        //        for (n,s) in array.enumerated().reversed() {
        //            print("\(n) \(s)")
        //        }
        
        //TODO: 数组的增删改
        //追加元素
        array.append("老蒋")
        print("追加")
        print(array)
        
        print("修改")
        array[1] = "小雯"
        print(array)
        //Index out of range 数组越界
        //        array[5] = "xxx"
        
        print("删除")
        array.remove(at: 2)
        print(array)
        
        //初始化
        //        let arrayd = [Int]()
        
        //TODO: 合并数组
        //要合并数组的类型必须一致
        let hebing = ["姥姥","1","3"]
        array += hebing
        print(array)
    }
    
    //MARK: 字符串的子串
    
    func zifuchuanzichuan() -> () {
        
        //建议使用NSString作为中转取
        
        let str = "我是谁呢嫩嫩额"
        
        let ocStr = str as NSString
        let s1 = ocStr.substring(with: NSMakeRange(2, 4))
        print(s1)
        
        print(str.startIndex)
        print(str.endIndex)
        
        //代表几个字之后开始
        let s2 = str.substring(from: "3个字".endIndex)
        print(s2)
        
        
    }
    
    //MARK:字符串格式化
    
    func stringgeshihua() -> () {
        
        let h = 8
        let m = 20
        let s = 9
        
        let datestr = "\(h):\(m):\(s)"
        print(datestr)
        
        let datestr1 = String(format: "%02d:%02d:%02d", h,m,s)
        print(datestr1)
        
    }
    
    //MARK:字符串的拼接
    
    func nsstringpinjie()  {
        
        let name = "老汪"
        let age = 29
        let title: String? = "boss"
        let point = CGPoint(x: 10, y: 20)
        
        
        //  \()变量/常量 直接拼接
        //可选项拼接 使用??
        let str = "\(name) \(age) \(title ?? "") \(point)"
        
        print(str)
        
        
        
    }
    
    //MARK: 字符串的长度
    
    func nsstringdemo()  {
        
        let str = "我 要 飞 啊"
        
        for s in str.characters.reversed() {
            print(s)
        }
        
        let abc = "hello world 董江鹏"
        //返回指定编码的对应的字节数量
        //UTF8编码(0-4个)  汉字是3个字节
        print(abc.lengthOfBytes(using: .utf8))
        
        //字符串长度 字符的个数!!!
        print(abc.characters.count)
        
        //使用类型转换
        // str as 类型
        let ocstr = str as NSString
        print(ocstr.length)
    }
    
    
    //MARK: for 循环
    
    func forxunhuandemo() {
        
        //变量 i [0,5)之间循环
        for i in 0..<5 {
            print(i)
        }
        
        print("-----")
        
        //变量 i [0,5]之间循环
        for i in 0...5 {
            print(i)
        }
        
        print("====")
        
        //CountableRange<Int>
        let num1 = 0..<7
        // CountableClosedRange<Int>
        let num2 = 0...7
        
        print(num1,num2);
        
        print("反序遍历")
        //TODO: 反序遍历
        for i in (0..<10).reversed() {
            print(i)
        }
    }
    
    
    //MARK: switch
    
    /// switch 可以对任意类型进行分支  不局限于整数
    /// switch 一般不需要break
    /// switch 如果需要多值 使用 ','
    /// 所有的分支至少需要一条指令 如果什么都不干 使用break
    func switchdemo(num: String)  {
        
        switch num {
        case "10","9":
            print("优秀")
        case "8" :
            break
        default:
            print("一般")
        }
        
    }
    
    //MARK: guard 守卫/守护
    
    func guarddemo() {
        
        let oName: String? = "老汪"
        let oAge: Int? = 20
        
        guard let name = oName , let age = oAge else {
            //判断是否有值 有值直接绕过else执行下面代码
            print("age or name is  nil")
            return
        }
        //执行到这必定有值
        print(name + String(age))
    }
    
    //MARK: if let / var
    
    func ifletvar() {
        
        let oName: String? = "老汪"
        let oAge: Int? = 20
        
        //        if let name = oName,
        if var name = oName,
            let age = oAge {
            
            name = "劳驾" //TODO: if var 可以修改
            
            //if let 判断let类型的值是否有值 进入到{}必定有值 不需要再 ! 解包
            
            print(name + String(age))
        }else{
            
            print("age or name is  nil")
        }
        
        
    }
    
    
    //MARK: 可选项的判断
    // ?? 判断
    func kexuanxiangpanduan(x: Int? ,y: Int?) {
        
        //        let x: Int? = 10
        //        let y: Int? = 200
        
        //强行解包有危险 会崩溃  传入nil
        //        print(x! + y!)
        
        // if  会造成代码丑陋
        //        if x != nil && y != nil {
        //                print(x! + y!)
        //        }else{
        //                print("x后者Y是nil")
        //        }
        
        
        //??  简单的三目运算  有值就使用值 没有值就使用??后面跟着的值
        print((x ?? 0) + (y ?? 0))
        
        let name: String? = "董"
        
        print((name ?? "") + "江鹏")
        
        //?? 运算的优先级比较低  不加() 先运算后面的+ 然后在判断name是否有值执行 ?? 运算
        print(name ?? "" + "江鹏")
        
    }
    
    
    //MARK: 三目运算
    
    func sanmuyunsuan() {
        
        let x  = 10
        
        
        x > 5 ? print("x > 5") : print("x < 5")
        
    }
    
    //MARK: 逻辑判断 if
    
    func luojipanduan() {
        
        let x = 10
        
        // 判断条件不需要 ()
        // 语句必须有{}
        if x > 5 {
            print("x > 5")
        }else{
            print("x < 5")
        }
        //Will never be executed  永远不会呗执行
    }
    
    
    //MARK: 可选项
    
    func kexuanxiang() -> () {
        
        //optional 枚举值 none代表没有值 some代表是某一类值
        let x: Optional = 10
        
        // '?' 代表是 可选的Int类型 可能没有值 可能是一个整数
        let y: Int? = 25
        
        
        print(x)
        print(y)
        
        //不同类型之间不能直接进行运算  如果没有值 是nil 不属于任何类型 不能参与计算
        // '!'代表强行解包  从可选值中强行获取对应的非空值 如果是nil 就会崩溃
        print(x! + y!)
    }
    
    func clickBtn(btn: UIButton) -> () {
        print(#function)
        print("hahahha")
        print(btn)
    }
    
    // let 定义一个常量不可修改  var 定义一个变量
    // swift的自动推导类型(会根据右侧代码的执行情况进行推导) option+click可查看自动推导的类型
    // swift中对类型要求特别严格  任何不同类型的数据之间 不允许直接运算 不会做默认的隐式转换
    // swift中不存在基本的数据类型 都是以结构体的存在的
    func letandvardemo1() -> () {
        
        let x = 11
        let y = 11.5
        let z: Double = 2 //TODO: 可以直接指定类型  let z:类型 = 数值
        
        //        print(x+y)  //FIXME: 会报错
        
        //将Y 转换成Int类型
        print(x + Int(y))
        
        //将X转换成Double类型
        print(Double(x) + y)
        
        print(y+z)
        
    }
    
    func letandvardemo() -> () {
        
        
        //小数 Double  精度高
        let x = 11.3
        
        //整数 Int
        var y = 20
        y = 21
        let v = UIView()
        
        
        
        print(x)
        print(y)
        print(v)
        
        
        
    }

}
