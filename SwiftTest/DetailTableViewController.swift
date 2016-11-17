//
//  DetailTableViewController.swift
//  SwiftTest
//
//  Created by tztddong on 2016/11/17.
//  Copyright © 2016年 dongjiangpeng. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {
    
    var detailPerson: PersonListModel?
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var phoneText: UITextField!
    @IBOutlet weak var mailText: UITextField!
    
    //完成回调
    //闭包是可选的  使用当前
    var completionCallBack: (() -> ())?
    //闭包的返回值是可选的 不适用
//    var completionCallBack: () -> ()?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if detailPerson != nil {
            
            nameText.text = detailPerson?.name
            phoneText.text = detailPerson?.phone
            mailText.text = detailPerson?.mail
        }
    
    }

    @IBAction func savePerson(_ sender: Any) {
        
        //在此处判断model是否实例化  如果是nil便是新建的 需要先行实例化在赋值
        if detailPerson == nil {
            
            detailPerson = PersonListModel()
        }
        
        detailPerson?.name = nameText.text
        detailPerson?.phone = phoneText.text
        detailPerson?.mail = mailText.text
        
        completionCallBack?()
        
       _ = navigationController?.popViewController(animated: true)
    }
    
}
