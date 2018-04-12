//
//  MyClass.swift
//  FirstProject
//
//  Created by LUCAS PAJARES PRIETO on 10/4/18.
//  Copyright © 2018 LUCAS PAJARES PRIETO. All rights reserved.
//
import Firebase
import UIKit

class DataHolder: NSObject {
   
    static let sharedInstance:DataHolder = DataHolder()
    var sNick:String = "Lucas"
    var fireStoreDB:Firestore?
    
    func initFirebase(){
        FirebaseApp.configure()
        fireStoreDB = Firestore.firestore()
    }

}

