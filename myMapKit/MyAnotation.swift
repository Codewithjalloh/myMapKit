//
//  MyAnotation.swift
//  myMapKit
//
//  Created by Jalloh on 26/06/2016.
//  Copyright © 2016 CodeWithJalloh. All rights reserved.
//

import Foundation
import MapKit


class MyAnotation: NSObject, MKAnnotation {
    
    var title: String?
    var subtitle: String?
    var coordinate: CLLocationCoordinate2D
    func getTitle() -> NSString {
        return self.title!
    }
    
    func getSubTitle() -> NSString {
        return self.subtitle!
    }
    
    init(c: CLLocationCoordinate2D, t:String, st:String) {
        coordinate = c
        title = t
        subtitle = st
    }
    
    
    
}