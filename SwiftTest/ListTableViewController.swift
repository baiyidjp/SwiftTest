//
//  ListTableViewController.swift
//  SwiftTest
//
//  Created by tztddong on 2016/11/17.
//  Copyright © 2016年 dongjiangpeng. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    var personData = [PersonListModel]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData { (dataList) in
            
//            print(dataList)
            
            //拼接数组
            self.personData += dataList
            
            //刷新表格
            self.tableView.reloadData()
        }
        
    }
    
    private func loadData(completion: @escaping (_ dataList: [PersonListModel]) -> ()) -> () {
        
        DispatchQueue.global().async { 
            
            print("努力加载中...")
            
            Thread.sleep(forTimeInterval: 1)
            
            var arrM = [PersonListModel]()
            
            for i in 0..<20 {
                
                let p = PersonListModel()
                
                p.name = "通讯录\(i)号"
                p.phone = "169368" + String(format: "%04d", arc4random_uniform(100000))
                p.mail = "\(p.phone)136.com"
                
                arrM.append(p)
            }
            
            //主线程回调数据
            DispatchQueue.main.async(execute: { 
                
                completion(arrM)
            })
        }
        
        
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return personData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellid", for: indexPath)

        cell.textLabel?.text = personData[indexPath.row].name
        cell.detailTextLabel?.text = personData[indexPath.row].phone

        return cell
    }
 
    // MARK: - Tbale View delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView .deselectRow(at: indexPath, animated: true)
        
        // 执行 segue
        performSegue(withIdentifier: "listtodetail", sender: indexPath)
    }
    
    @IBAction func addPerson(_ sender: Any) {
        
        performSegue(withIdentifier: "listtodetail", sender: nil)
        
    }
    
    
    //控制器跳转的方法 storyboard
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // 类型转换
        // as? as! 直接是根据前面的返回值决定 前面是可选加? 不是加!
        let vc = segue.destination as! DetailTableViewController
        
        // if ler  / guard let as一律是?
        if let indexPath = sender as? IndexPath {
            
            //indexPath 一定有值
            //给详情 赋值
            vc.detailPerson = personData[indexPath.row]
            
            //回调刷新
            
            vc.completionCallBack = {
                
                self.tableView.reloadRows(at: [indexPath], with: .automatic)
            }
        } else{
            
            // 加号跳转
            vc.completionCallBack = {
                
                guard let p = vc.detailPerson else {
                    return
                }
                
                self.personData.insert(p, at: 0)
                self.tableView.reloadData()
            }
        }
    }
}
