//
//  ViewController.swift
//  myMapKit
//
//  Created by Jalloh on 26/06/2016.
//  Copyright © 2016 CodeWithJalloh. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var lat: UILabel!
    @IBOutlet weak var long: UILabel!
    @IBOutlet weak var myMapView: MKMapView!
    
    
    var set = NSMutableArray()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
       self.myMapView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func createAnno(sender: AnyObject) {
        let a = MyAnotation(c:myMapView.centerCoordinate, t: "Center", st: "The map center")
        mapView(myMapView, viewForAnnotation: a)
        myMapView.addAnnotation(a)
        set.addObject(a)
        
        
    }
    
    @IBAction func deleteAnno(sender: AnyObject) {
        let annoToRemove = self.myMapView.annotations
        self.myMapView.removeAnnotations(annoToRemove)
        
    }
    
    @IBAction func coordinates(sender: AnyObject) {
        lat.text = "\(myMapView.centerCoordinate.latitude)"
        long.text = "\(myMapView.centerCoordinate.longitude)"
        
    }
    
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        
        let pinView:MKPinAnnotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "custom")
        pinView.image = UIImage(named: "blackpin")
        return pinView
        
    }
    
    
    
    


}

