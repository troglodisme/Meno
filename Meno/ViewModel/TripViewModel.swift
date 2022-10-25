//
//  TripViewModel.swift
//  Meno
//
//  Created by Giulio on 25/10/22.
//

import Foundation

class TripViewModel: ObservableObject {
    
    @Published var trips: [Trip] = [
        trip,
        trip1,
        trip2
    ]
    
    func remove(at offsets: IndexSet) {
        trips.remove(atOffsets: offsets)
    }
    
}
