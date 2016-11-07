//
//  ViewController.swift
//  SwiftTest
//
//  Created by tztddong on 2016/11/7.
//  Copyright © 2016年 dongjiangpeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
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
        
        stringgeshihua()
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

