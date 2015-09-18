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
    
    var textFieldArray:[UITextField] = []
    var checkbtnArray:[UIButton] = []
    var imageViewArray:[UIImageView] = []

    
    //最初によみこむところ
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldArray = [textField1,textField2,textField3,textField4,textField5]
        checkbtnArray = [checkbtn1,checkbtn2,checkbtn3,checkbtn4,checkbtn5]
        imageViewArray = [imageView1,imageView2,imageView3,imageView4,imageView5]
        
        // Do any additional setup after loading the view, typically from a nib.
        //textFieldのデリゲートをセットする
        for tf in textFieldArray{
            tf.delegate = self
        }
        
        //チェックボタンの上4つは押しても反応しないようにする
        for bt in checkbtnArray[0...3] {
            bt.enabled = false   // 要素をログに出力する
        }
        
        //画像を隠す
        for iv in imageViewArray[0...3]{
            iv.hidden = true
        }
    }
    
    @IBAction func check2() {
        check(1)
    }
    @IBAction func check3() {
        check(2)
    }
    @IBAction func check4() {
        check(3)
    }
    @IBAction func check5() {
        check(4)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func check(checknum:Int){
        checkbtnArray[checknum].setTitle("✔", forState: .Normal)
        checkbtnArray[checknum-1].enabled = true
        checkbtnArray[checknum].enabled = false
        
        imageViewArray[checknum].hidden = true
        imageViewArray[checknum-1].hidden = false
        
        let text = NSAttributedString(string: self.textFieldArray[checknum].text, attributes: [
            NSStrikethroughStyleAttributeName : NSUnderlineStyle.StyleSingle.rawValue ])
        
        textFieldArray[checknum].attributedText = text
        
        UIView.animateWithDuration(0.3,
            // アニメーション中の処理.
            animations: { () -> Void in
                self.imageViewArray[checknum-1].transform = CGAffineTransformMakeScale(0.4, 0.4)
                self.imageViewArray[checknum-1].transform = CGAffineTransformMakeScale(1.0, 1.0)
            })
            { (Bool) -> Void in
        }
    }
}

