//
//  mapViewController.swift
//  تبرعي
//
//  Created by bashayer Al qaoud on 10/22/20.
//

import UIKit
import MapKit
class mapViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchCharitysOnMap(charitysLocation: charityslocation)
       //mapView.mapType = mapTypes[Preference.mapType]
            mapView.showAnnotations(mapView.annotations, animated: true)

        // Do any additional setup after loading the view.
    }
    func fetchCharitysOnMap(charitysLocation: [charityLocation]){
        for charityLocation in charitysLocation{
            let annotations = MKPointAnnotation()
            annotations.title = charityLocation.name
            annotations.coordinate = CLLocationCoordinate2D(latitude: charityLocation.lattitude, longitude: charityLocation.longtitude)
            mapView.addAnnotation(annotations)

        }
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

  
}
