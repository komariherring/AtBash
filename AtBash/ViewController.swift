//
//  ViewController.swift
//  AtBash
//
//  Created by Komari Herring on 9/8/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate
{
    
    var aBrain = TheBrain()
    
    @IBOutlet weak var plainTextView: UITextView!
    
    @IBOutlet weak var cipherTextView: UITextView!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func encodeTapped(sender: UIButton)
    {
        
        plainTextView.resignFirstResponder()
        
        //commented below out becaus errors
        
        //let myString = TheBrain.encodeText(plainTextView.text)
        //cipherTextView.text = myString
    }
    
    
    @IBAction func decodeTapped(sender: UIButton)
    {
        cipherTextView.resignFirstResponder()
        
        //commented below out for errors
        
        //let newString = TheBrain.decodeText(cipherTextView.text)
        //plainTextView.text = newString
        
    }
    
    
    
    @IBAction func clearAllTapped(sender: UIButton)
    {
        plainTextView.text = ""
        cipherTextView.text = ""
    }
    
    
}
