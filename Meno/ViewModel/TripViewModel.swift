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
        trip3
    ]
    
    func remove(at offsets: IndexSet) {
        trips.remove(atOffsets: offsets)
    }
    
//    func addTrip() {
//        trips.append(trip)
//    }
    
}
