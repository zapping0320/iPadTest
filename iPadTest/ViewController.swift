//
//  ViewController.swift
//  iPadTest
//
//  Created by DD Dev on 2021/03/29.
//

import UIKit

class ViewController: UIViewController {
    
    private let sixteenkeystring:String = "zmflqxhxortm!@#$"
    
    private let threetwokeystring:String = "zmflqxhxortm!@#$zmflqxhxortm!@#$"

    @IBOutlet weak var currentText: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //currentText.text = //"{"\name\":"\최흥길\","\phone\":"\01032040930\","\carrier"\:"\SKT"\,"\jumin"\:"\820713-1234567"\}"
        
        currentText.text = "{\"name\":\"최흥길\",\"phone\":\"01032040930\",\"carrier\":\"SKT\",jumin\":\"820713-1234567\"}"
    }


    @IBAction func encrytAction(_ sender: Any) {
        //resultLabel.text = AES256CBC.encryptString(currentText.text!, password: threetwokeystring)!
        resultLabel.text = "not yet"
    }
    
    @IBAction func decryptAction(_ sender: Any) {
        
    }
}

