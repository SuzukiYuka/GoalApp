//
//  ViewController.swift
//  GoalApp
//
//  Created by nagata on 8/9/15.
//  Copyright (c) 2015 nagata. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {
    //テキストフィールドの宣言
    @IBOutlet var textField1: UITextField!
    @IBOutlet var textField2: UITextField!
    @IBOutlet var textField3: UITextField!
    @IBOutlet var textField4: UITextField!
    @IBOutlet var textField5: UITextField!
    
    //チェックボタンの宣言
    @IBOutlet var checkbtn1: UIButton!
    @IBOutlet var checkbtn2: UIButton!
    @IBOutlet var checkbtn3: UIButton!
    @IBOutlet var checkbtn4: UIButton!
    @IBOutlet var checkbtn5: UIButton!
    
    //画像の宣言
    @IBOutlet var imageView1: UIImageView!
    @IBOutlet var imageView2: UIImageView!
    @IBOutlet var imageView3: UIImageView!
    @IBOutlet var imageView4: UIImageView!
    @IBOutlet var imageView5: UIImageView!

    
    //最初によみこむところ
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //textFieldのデリゲートをセットする
        textField1.delegate = self
        textField2.delegate = self
        textField3.delegate = self
        textField4.delegate = self
        textField5.delegate = self
        
        //チェックボタンの上4つは押しても反応しないようにする
        checkbtn1.enabled = false
        checkbtn2.enabled = false
        checkbtn3.enabled = false
        checkbtn4.enabled = false
        
        //画像を隠す
        imageView1.hidden = true
        imageView2.hidden = true
        imageView3.hidden = true
        imageView4.hidden = true
        
    }
    
    
    
    @IBAction func check2() {
        checkbtn2.setTitle("✔", forState: .Normal)
        checkbtn1.enabled = true
        checkbtn2.enabled = false
        
        imageView2.hidden = true
        imageView1.hidden = false
        
        
        let text = NSAttributedString(string: self.textField2.text, attributes: [
            NSStrikethroughStyleAttributeName : NSUnderlineStyle.StyleSingle.rawValue ])
        
        textField2.attributedText = text
        
        UIView.animateWithDuration(0.3,
            
            // アニメーション中の処理.
            animations: { () -> Void in
                self.imageView1.transform = CGAffineTransformMakeScale(0.4, 0.4)
                self.imageView1.transform = CGAffineTransformMakeScale(1.0, 1.0)
                
            })
            { (Bool) -> Void in
                
        }
        
    }
    
    @IBAction func check3() {
        checkbtn3.setTitle("✔", forState: .Normal)
        checkbtn2.enabled = true
        checkbtn3.enabled = false
        
        imageView3.hidden = true
        imageView2.hidden = false
        
        let text = NSAttributedString(string: self.textField3.text, attributes: [
            NSStrikethroughStyleAttributeName : NSUnderlineStyle.StyleSingle.rawValue ])
        
        textField3.attributedText = text
        
        UIView.animateWithDuration(0.3,
            
            // アニメーション中の処理.
            animations: { () -> Void in
                self.imageView2.transform = CGAffineTransformMakeScale(0.4, 0.4)
                self.imageView2.transform = CGAffineTransformMakeScale(1.0, 1.0)
                
            })
            { (Bool) -> Void in
                
        }
    }
    
    @IBAction func check4() {
        checkbtn4.setTitle("✔", forState: .Normal)
        checkbtn3.enabled = true
        checkbtn4.enabled = false
        
        imageView4.hidden = true
        imageView3.hidden = false
        
        let text = NSAttributedString(string: self.textField4.text, attributes: [
            NSStrikethroughStyleAttributeName : NSUnderlineStyle.StyleSingle.rawValue ])
        
        textField4.attributedText = text
        
        UIView.animateWithDuration(0.3,
            
            // アニメーション中の処理.
            animations: { () -> Void in
                self.imageView3.transform = CGAffineTransformMakeScale(0.4, 0.4)
                self.imageView3.transform = CGAffineTransformMakeScale(1.0, 1.0)
                
            })
            { (Bool) -> Void in
                
        }
    }
    
    @IBAction func check5() {
        //チェックをいれる
        checkbtn5.setTitle("✔", forState: .Normal)
        
        //一個上のボタンを使えるように
        checkbtn4.enabled = true
        //自分は使えないように
        checkbtn5.enabled = false
        
        //今いる画像を隠す
        imageView5.hidden = true
        
        //一個上の画像を表示
        imageView4.hidden = false
        
        //打ち消し線をいれる
        let text = NSAttributedString(string: self.textField5.text, attributes: [
            NSStrikethroughStyleAttributeName : NSUnderlineStyle.StyleSingle.rawValue ])
        textField5.attributedText = text
        
        //ふわってなるアニメーション
        UIView.animateWithDuration(0.3,
            
            // アニメーション中の処理.
            animations: { () -> Void in
                self.imageView4.transform = CGAffineTransformMakeScale(0.4, 0.4)
                self.imageView4.transform = CGAffineTransformMakeScale(1.0, 1.0)
                
            })
            { (Bool) -> Void in
                
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

