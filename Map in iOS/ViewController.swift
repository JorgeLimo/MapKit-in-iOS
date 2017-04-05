//
//  ViewController.swift
//  Map in iOS
//
//  Created by alumno on 4/4/17.
//  Copyright © 2017 Jorge Limo. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController,MKMapViewDelegate {
    
    let location = CLLocation(latitude: -12.1026387, longitude: -77.0258471)
    
    @IBOutlet weak var mapa: MKMapView!
    
    @IBOutlet weak var segOption: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        getToStart(ubicacion: location)
        
        
        let marcador = Marcador(titulo: "Marcador 1", coordenada: location.coordinate,subtitle: "Descripcion del marcador 1")
        mapa.addAnnotation(marcador)
        
        //let anotationView = MKAnnotationView()
        //anotationView.annotation?.title = marcador.nombre
        //anotationView.annotation?.coordinate = marcador.coordenada
        
        
    }
    func getToStart(ubicacion : CLLocation){
        
        let region = MKCoordinateRegion(center: ubicacion.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005))
        
        mapa.setRegion(region, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func actionCambiar(_ sender: AnyObject) {
        
        let opcion = sender.selectedSegmentIndex!
        
        switch opcion {
        case 0:
            mapa.mapType  = MKMapType.standard
        case 1:
            mapa.mapType = .satellite
        default:
            mapa.mapType = .hybrid
        }
    
    }

    
    //Metodos de MKMapViewDelegate
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        let  indentificador =  "marcador"
        
        var view: MKPinAnnotationView
        
        if let dequeueView = mapView.dequeueReusableAnnotationView(withIdentifier: indentificador){
            
            dequeueView.annotation = annotation
            view = dequeueView as! MKPinAnnotationView
            
            
        }else{
            
            view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: indentificador)
            
            view.canShowCallout = true
            
            //para mover el popup del marcador  de lugar
            view.calloutOffset = CGPoint(x: 0, y: 0)
            
            
            
            // para que el boton este al costado - 
            //view.rightCalloutAccessoryView = UIButton(type: .detailDisclosure) as UIView!
            // para que el boton este abajo - 
            //view.detailCalloutAccessoryView = UIButton(type: .detailDisclosure) as UIView!

        }
        
        return view
    }
    
    
    
}

