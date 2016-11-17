
//
//  UIView+extension.swift
//  SwiftTest
//
//  Created by tztddong on 2016/11/17.
//  Copyright © 2016年 dongjiangpeng. All rights reserved.
//

import UIKit


extension UIView {

    //convenience  便利构造函数 写控件分类
    convenience init(frame:CGRect,backColor:UIColor = UIColor.red) {

        self.init(frame:frame)
        
        self.backgroundColor = backColor
        
    }
}
