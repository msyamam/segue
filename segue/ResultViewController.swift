//
//  ResultViewController.swift
//  segue
//
//  Created by Kisoshi on 2018/05/03.
//  Copyright © 2018年 masayoshi.yamamoto. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    // 2画面目のLabelを、StoryboardでこのViewControllerにIBOutletとして接続しておく
    @IBOutlet weak var label: UILabel!
   
    
    @IBAction func label(_ sender: Any) {
    }
    
    
    // 受け取るためのプロパティ（変数）を宣言しておく
    var x:Int = 0
    var y:Int = 0
    var name: String = "name"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // 上記では、x, y を 0 と宣言していたが、
        // 1画面目のViewControllerから遷移するときにprepareForSegueで
        // x, yの値を新たに代入されたので両方共 1 が入っている
        self.label.text = "こんにちは \(self.name)さん"
        //let result = x + y
        //label.text = "結果は \(result) です"
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
