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
        
        //テストコードを入力
        //リターンキーを押下したら、キーボードが閉じる
        testTextField.addTarget(self, action: #selector(onExitAction(sender:)), for: .editingDidEndOnExit)
        
    }
    
    @objc func didTapView() {
        view.endEditing(true)
    }
    
    /// `.editingDidEndOnExit` イベントが送信されると呼ばれる
        @objc func onExitAction(sender: Any) {
            print("リターンキーを押下：\(testTextField.text ?? "")")
        }
    

    @IBAction func pressButton(_ sender: Any) {
        //キーボードをしまう操作
        testTextField.resignFirstResponder()
        
        let str : NSMutableAttributedString = NSMutableAttributedString(string:testTextField.text ?? "")
        //テキストフィールドのテキストをコンソールに表示する
        print("text:\(testTextField.text ?? "")")
        
        str.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, str.length))
        //テキストフィールドに取り消し線の文字を表示させる。
        testTextField.attributedText = str
        
        
    }
    
}

