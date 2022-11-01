//
//  BagButton.swift
//  Meno
//
//  Created by Giulio on 31/10/22.
//

import SwiftUI
import CoreLocation

struct BackpackView: View {
    
    var trip: Trip
    var body: some View {
        
        VStack{
            HStack{
                                
                Image("\(trip.bagSize)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50)
                
                Spacer()
                
                Text("\(trip.bagSize) Backpack")
                    .font(.title)
                
                Image(systemName: "chevron.right")
                                
            }
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(.gray, lineWidth: 1)
            )
        }


        
    }
}

struct BackpackView_Previews: PreviewProvider {
    static var previews: some View {
        BackpackView(trip:
                    Trip(icon: "tram",
                         destination: "Florence",
                         departureDate: Date.distantPast,
                         returnDate: Date.distantFuture,
                         bagSize: "15L",
                         isArchived: false,
                         coordinate: CLLocationCoordinate2D(latitude: 43.769, longitude: 11.255),
                         image: Image("Firenze")
                        )
        )
    }
}
