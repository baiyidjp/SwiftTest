//
//  AddViewController.swift
//  SwiftTest
//
//  Created by tztddong on 2016/11/15.
//  Copyright © 2016年 dongjiangpeng. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    @IBOutlet weak var numText1: UITextField!
    @IBOutlet weak var numText2: UITextField!
    @IBOutlet weak var resultL: UILabel!
    @IBOutlet weak var addBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        addBtn.addTarget(self, action: #selector(addNum), for: .touchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addNum() -> () {
        
        guard let num1 = Int(numText1.text! ),
              let num2 = Int(numText2.text! ) else {
                print("有空值")
            return
        }
        
        resultL.text = "\(num1+num2)"
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
