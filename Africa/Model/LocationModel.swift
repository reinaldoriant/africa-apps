//
//  LocationModel.swift
//  Africa
//
//  Created by TI Digital on 07/07/21.
//

import SwiftUI
import MapKit

struct NationalParkLocation: Codable,Identifiable{
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    //Computer property
    var location:CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
