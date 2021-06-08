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
        
        
    }


}

