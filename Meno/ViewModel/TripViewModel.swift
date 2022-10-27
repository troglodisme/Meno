//
//  TripViewModel.swift
//  Meno
//
//  Created by Giulio on 25/10/22.
//

import Foundation


class TripViewModel: ObservableObject {
    
    @Published var trips: [Trip] = [
        trip0,
        trip1,
        trip2,
    ]
    
    func remove(at offsets: IndexSet) {
        trips.remove(atOffsets: offsets)
    }
    
    //how can we send parameters to this function?
    func appendTrip() {
        trips.append(Trip(icon: "Test",
                          destination: "Hello",
                          departureDate: Date.now,
                          returnDate: Date.now,
                          bagSize: "Hello")
        )
    }
    
}
