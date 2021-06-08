//
//  ViewController.swift
//  NSMutableAttributedString
//
//  Created by RyoNagai on 2021/06/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let attributeString: NSMutableAttributedString = NSMutableAttributedString(string: "取り消し線")

        attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))

        testTextField.attributedText = attributeString
        
        //画面余白をタップした時の処理
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.didTapView))
        view.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc func didTapView() {
        view.endEditing(true)
    }
    

    @IBAction func pressButton(_ sender: Any) {
        
        testTextField.resignFirstResponder()
        
        let str : NSMutableAttributedString = NSMutableAttributedString(string:testTextField.text ?? "")
        
        str.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, str.length))
        
        testTextField.attributedText = str
        
        
    }
    
}

