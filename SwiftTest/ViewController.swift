//
//  ViewController.swift
//  SwiftTest
//
//  Created by tztddong on 2016/11/7.
//  Copyright © 2016年 dongjiangpeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    
    
    //MARK: -视图加载
    
    /// 文档注释  option + cmd + /
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //1.创建视图
        
        setupUI()
    }

    func setupUI() -> () {
        
        let tableview = UITableView(frame: view.bounds, style: .plain)
        
        view.addSubview(tableview)
        
        tableview.register(UITableViewCell.self, forCellReuseIdentifier: "cellid")
        
        tableview.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 23
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellid", for: indexPath)
        //textLable 是可选的 自动补全?  如果textlabel有 则使用 没有则什么都不做
        cell.textLabel?.text = "hello --- \(indexPath.row)"
        return cell
        
        
    }
}

