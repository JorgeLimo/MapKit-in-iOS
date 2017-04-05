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
    
    init(titulo:String ,coordenada:CLLocationCoordinate2D) {
        self.title = titulo
        self.coordinate = coordenada
        
        super.init()
    }
    
    
    
    
    
}
