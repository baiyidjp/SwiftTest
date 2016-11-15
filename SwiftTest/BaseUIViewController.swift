//
//  BaseUIViewController.swift
//  SwiftTest
//
//  Created by tztddong on 2016/11/9.
//  Copyright © 2016年 dongjiangpeng. All rights reserved.
//

import UIKit

class BaseUIViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func creatbtn() -> () {
        
        let btn = UIButton()
        
        btn.setTitle("我是按钮", for: .normal)
        btn.setTitleColor(#colorLiteral(red: 1, green: 0.4198127687, blue: 0.9443824887, alpha: 1), for: .normal)
        btn.sizeToFit()
        
        view.addSubview(btn)
    }
    
    
    func setupUI() -> () {
        
        let tableview = UITableView(frame: view.bounds, style: .plain)
        
        view.addSubview(tableview)
        
        tableview.register(UITableViewCell.self, forCellReuseIdentifier: "cellid")
        
//        tableview.dataSource = self
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


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
