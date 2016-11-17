//
//  URLViewController.swift
//  SwiftTest
//
//  Created by tztddong on 2016/11/17.
//  Copyright © 2016年 dongjiangpeng. All rights reserved.
//

import UIKit

class URLViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    class func sendURL() -> (){
        
        let url = URL(string: "http://www.baidu.com")
        
        //发起网络请求
        URLSession.shared.dataTask(with: url!){ (data , _, error) in
            
            guard let data = data,
                let html = String(data: data, encoding: .utf8)else{
                
                print("请求失败")
                return
            }
            print(html)
        }
    }

}
