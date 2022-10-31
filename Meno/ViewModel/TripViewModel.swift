//
//  TripViewModel.swift
//  Meno
//
//  Created by Giulio on 25/10/22.
//

import Foundation
import CoreLocation
import SwiftUI


class TripViewModel: ObservableObject {
    
    @Published var trips: [Trip] = [
        
        Trip (icon: "tram",
              destination: "Florence",
              departureDate: Date.distantPast,
              returnDate: Date.distantFuture,
              bagSize: "15L",
              isArchived: true,
              coordinate: CLLocationCoordinate2D(latitude: 43.769, longitude: 11.255),
              image: Image("Firenze")
        ),

        Trip (icon: "airplane",
              destination: "Cornwall",
              departureDate: Date.distantPast,
              returnDate: Date.distantFuture,
              bagSize: "30L",
              isArchived: true,
              coordinate: CLLocationCoordinate2D(latitude: 50.627, longitude: -4.635),
              image: Image("Cornwall")
        ),

        Trip (icon: "figure.walk",
              destination: "Sentiero Degli Dei",
              departureDate: Date.distantPast,
              returnDate: Date.distantFuture,
              bagSize: "40L",
              isArchived: true,
              coordinate: CLLocationCoordinate2D(latitude: 40.621, longitude: 14.520),
              image: Image("SentieroDegliDei")
                
        )
]

    //Upcoming trips, currently using non archived filter
    var upcomingTrips: [Trip] {
        
        var upcomingTrips: [Trip] = []
        
        upcomingTrips = self.trips.filter({ trip in
            
            return trip.isArchived == false
            
        })
        
        return upcomingTrips
    }
    
    
    
    var archivedTrips: [Trip] {
        
        var archivedTrips: [Trip] = []
        
        archivedTrips = self.trips.filter({ trip in
            return trip.isArchived == true
        })
        
        return archivedTrips
    }
        
    func remove(at offsets: IndexSet) {
        trips.remove(atOffsets: offsets)
    }
    
    
//    func appendTrip(icon: String, destination: String, departureDate: Date, returnDate: Date, bagSize: String, isArchive: Bool) {
//        trips.append(icon, destination, )
//        
//    }
}
