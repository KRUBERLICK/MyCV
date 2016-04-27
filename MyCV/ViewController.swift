//
//  ViewController.swift
//  MyCV
//
//  Created by Данил Ильчишин on 4/27/16.
//  Copyright © 2016 KRUBERLICK. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    //MARK: - Outlets
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var photoImageView: UIImageView!
    
    
    
    //MARK: - Properties
    
    let regionRadius: CLLocationDistance = 3000
    
    
    
    //MARK: - MapView setup
    
    //center map view over the given location
    func centerMapOnLocation(location: CLLocation) {
        
        //set square region
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius, regionRadius)
        
        //set region to map view
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    
    
    //MARK: - Supreclass Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //kiev coordinates
        let initialLocation = CLLocation(latitude: 50.4501, longitude: 30.5234)
        
        //setup map view
        centerMapOnLocation(initialLocation)
        
        //make user photo image round
        photoImageView.layer.cornerRadius = 160
        photoImageView.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}