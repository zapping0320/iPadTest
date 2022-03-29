//
//  ViewController.swift
//  iPadTest
//
//  Created by DD Dev on 2021/03/29.
//

import UIKit

class ViewController: UIViewController {
    
    //private let sixteenkeystring:String = "zmflqxhxortm!@#$"
    
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
        let resultString = AES256CBC.encryptString("{\"name\":\"최흥길\",\"phone\":\"01032040930\",\"carrier\":\"SKT\",\"jumin\":\"820713-1234567\"}", password: threetwokeystring)!//AES256CBC.encryptString(currentText.text!, password: threetwokeystring)!
        resultLabel.text = resultString
        print(resultString)
        
    }
    
    @IBAction func decryptAction(_ sender: Any) {
        
    }
    
    @IBAction func forceQuitorNotAction(_ sender: Any) {
        let alert = UIAlertController(title: title,
                                      message: "업데이트하시겠습니까?",
                                      preferredStyle: .alert)
        let confirmAction = UIAlertAction(title: "확인",
                                          style: .default, handler: {result in
            print("업데이트")
            UIApplication.shared.perform(#selector(NSXPCConnection.suspend))
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) { exit(0)  }
            
        })
        
        alert.addAction(confirmAction)
        
        let cancelAction = UIAlertAction(title: "취소",
                                         style: .default, handler: {result in
            print("취소")
        })
        alert.addAction(cancelAction)
        
        self.present(alert, animated: true, completion: nil)
    }
}

