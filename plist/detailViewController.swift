//
//  detailViewController.swift
//  plist
//
//  Created by D7703_17 on 2018. 6. 21..
//  Copyright © 2018년 D7703_17. All rights reserved.
//

import UIKit
import MapKit

class detailViewController: UIViewController {

    @IBOutlet weak var detailMapView: MKMapView!
      
    var Title: String = ""
    var address: String = ""
      
    override func viewDidLoad() {
            super.viewDidLoad()
      
      self.title = Title
      
            let geoCoder = CLGeocoder()
            geoCoder.geocodeAddressString(address, completionHandler: {
                  (placemarks: [CLPlacemark]?, error: Error?) -> Void in
                  
                  if let error = error {
                        print(error)
                        return
                  }
                  
                  if placemarks != nil {
                        let placemark = placemarks![0]
                        
                        // Add annotation
                        let annotation = MKPointAnnotation()
                        annotation.title = self.Title
                        annotation.subtitle = self.address
                        
                        if let location = placemark.location {
                              annotation.coordinate = location.coordinate
                              self.detailMapView.addAnnotation(annotation)
                              
                              // Set zoom level
                              let region = MKCoordinateRegionMakeWithDistance(annotation.coordinate, 700, 700)
                              self.detailMapView.setRegion(region, animated: true)
                              self.detailMapView.selectAnnotation(annotation, animated: true)
                        }
                  }
            })
}
}

