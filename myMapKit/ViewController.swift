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
        
    }
    
    @IBAction func deleteAnno(sender: AnyObject) {
        
    }
    
    
    
    
    
    


}

