//
//  ViewController.swift
//  segue
//
//  Created by Kisoshi on 2018/05/03.
//  Copyright © 2018年 masayoshi.yamamoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label2: UITextField!
    
    //@IBOutlet weak var label: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        //let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているx, yに値を代入して渡す
        //resultViewController.x = 1
        //resultViewController.y = 1
        
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        resultViewController.name = self.label2.text!
    }
        
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        // 他の画面から segue を使って戻ってきた時に呼ばれる
    }

}

