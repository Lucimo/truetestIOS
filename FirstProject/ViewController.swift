//
//  ViewController.swift
//  FirstProject
//
//  Created by LUCAS PAJARES PRIETO 22/3/18.
//  Copyright © 2018 LUCAS PAJARES PRIETO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var txtUser:UITextField?
    @IBOutlet var txtPassword:UITextField?
    @IBOutlet var btn:UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad();
       
        
        // Do any additional setup after loading the view, typically from a nib.
        txtUser?.text=DataHolder.sharedInstance.sNick
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clickLoginEvent(){
        print("Hola " + (txtUser?.text)!)
        
        if txtUser?.text == "Lucas" && txtPassword?.text == "pajares" {
            self.performSegue(withIdentifier: "transitionLogin", sender: self)
            
        }
        
    }
    
    
    
}

