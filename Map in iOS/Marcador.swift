//
//  Marcador.swift
//  Map in iOS
//
//  Created by alumno on 4/4/17.
//  Copyright © 2017 Jorge Limo. All rights reserved.
//

import UIKit
import MapKit

class Marcador: NSObject,MKAnnotation {

    var title: String?
    var coordinate: CLLocationCoordinate2D
    var subtitle: String?
    
    init(titulo:String ,coordenada:CLLocationCoordinate2D,subtitle:String) {
        self.title = titulo
        self.coordinate = coordenada
        self.subtitle = subtitle
        
        super.init()
    }
    
    
    
    
    
}
