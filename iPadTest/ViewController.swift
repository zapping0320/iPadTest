//
//  ViewController.swift
//  iPadTest
//
//  Created by DD Dev on 2021/03/29.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currentText: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        currentText.text = "크립토택스1234"
    }


    @IBAction func encrytAction(_ sender: Any) {
        
    }
    
    @IBAction func decryptAction(_ sender: Any) {
        
    }
}

