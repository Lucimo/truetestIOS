//
//  VCRegister.swift
//  FirstProject
//
//  Created by LUCAS PAJARES PRIETO on 3/4/18.
//  Copyright © 2018 LUCAS PAJARES PRIETO. All rights reserved.
//
import Firebase
import UIKit

class VCRegister: UIViewController {
    
    @IBOutlet var txtEmail:UITextField?
    @IBOutlet var txtUser:UITextField?
    @IBOutlet var txtPassword:UITextField?
    @IBOutlet var txtRePassword:UITextField?
    @IBOutlet var btnAceptar:UIButton?
    @IBOutlet var btnCancelar:UIButton?
    override func viewDidLoad() {
        super.viewDidLoad()
       txtUser?.text = DataHolder.sharedInstance.sNick
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clickRegister(){
        Auth.auth().createUser(withEmail: (txtUser?.text)!,
        password:(txtPassword?.text)!){(email, error)in
        if email != nil{
            print ("Te registraste")
            DataHolder.sharedInstance.fireStoreDB?.collection("Perfiles").document((email?.uid)!).setData(["email":self.txtUser?.text, "nombre":self.txtEmail?.text ])
            }
        else{
            print(error!)
            }
        }
        print("HOLAAA")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
   
}
