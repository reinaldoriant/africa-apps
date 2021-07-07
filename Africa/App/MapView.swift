//
//  MapView.swift
//  Africa
//
//  Created by TI Digital on 07/07/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinate = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinate, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    var body: some View {
        //MARK: No1 Basic Map
       // Map(coordinateRegion: $region)
        
        //MARK: No2 ADVANCED MAP
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent:{item in
            //(A) PIN: Old Style (always static)
//            MapPin(coordinate: item.location, tint: .accentColor)
            
            //(B) MARKER: NEW STYLE (Always static)
            //MapMarker(coordinate: item.location, tint: .accentColor)
            
            //(C) Custom Basic Anotation (it could be interacted)
            
            MapAnnotation(coordinate: item.location){
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            
        })
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
            .previewDevice("iPhone 11")
    }
}
