//
//  ViewController.swift
//  winguEssentialsDemo
//
//  Created by Jakub Mazur on 24/04/2018.
//  Copyright © 2018 Jakub Mazur. All rights reserved.
//

import UIKit
import CoreLocation
import winguSDKEssential

class ViewController: UIViewController {
    
    lazy var winguLocations: WinguLocations = {
        let winguLocations: WinguLocations = WinguLocations.shared
        winguLocations.delegate = self
        return winguLocations
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        winguLocations.startRangingBeacons(regions: [], locationManager: nil)
        winguLocations.startMonitorGeofenceLocations()
    }
}

extension ViewController: WinguLocationsDelegate {
    func authorizationStatus(_ authorizationStatus: CLAuthorizationStatus) { }
    
    func winguChannels(_ channels: [Channel]) {
        print(channels)
    }
    
}
