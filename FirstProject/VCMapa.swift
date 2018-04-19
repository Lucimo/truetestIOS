//
//  VCMapa.swift
//  FirstProject
//
//  Created by LUCAS PAJARES PRIETO on 19/4/18.
//  Copyright © 2018 LUCAS PAJARES PRIETO. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
class VCMapa: UIViewController, CLLocationManagerDelegate{
    @IBOutlet var miMapa:MKMapView?
    var locationManager:CLLocationManager?
    override func viewDidLoad() {
        super.viewDidLoad()
self.agregarPin(titulo: "HOLA", latitude: 42, longitud: -3)
        locationManager = CLLocationManager()
        locationManager?.delegate = self
        locationManager?.requestAlwaysAuthorization()
        locationManager?.startUpdatingLocation()
        
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
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    print(locations[0])
        self.nuevaRegionMapa(lat : locations[0].coordinate.latitude, longitud: locations[0].coordinate.longitude)
    }
    func nuevaRegionMapa(lat: Double, longitud lon:Double){
        let puntoCentro:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: lat, longitude: lon)
        
        let miSpan:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta : 0.01, longitudeDelta: 0.01)
        let miRegion:MKCoordinateRegion = MKCoordinateRegion(center: puntoCentro, span: miSpan)
        miMapa?.setRegion(miRegion, animated: true)
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
