//
//  VCMapa.swift
//  FirstProject
//
//  Created by LUCAS PAJARES PRIETO on 19/4/18.
//  Copyright © 2018 LUCAS PAJARES PRIETO. All rights reserved.
//

import UIKit
import MapKit
class VCMapa: UIViewController {
    @IBOutlet var miMapa:MKMapView?
    override func viewDidLoad() {
        super.viewDidLoad()
self.agregarPin(titulo: "HOLA", latitude: 42, longitud: -3)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func agregarPin(titulo:String, latitude lat:Double, longitud lon:Double ){
        
        let miPin:MKPointAnnotation = MKPointAnnotation()
        miPin.coordinate.latitude = lat
        miPin.coordinate.longitude = lon
        miPin.title = titulo
        miMapa?.addAnnotation(miPin)
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
