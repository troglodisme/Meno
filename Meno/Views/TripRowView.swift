//
//  TripView.swift
//  Meno
//
//  Created by Giulio Ammendola on 25/10/2022.
//

import SwiftUI

struct TripRowView: View {
    
    var trip: Trip
    
    var body: some View {
        HStack{
            
            //this should be a parameter that can be changed for each trip
            Image(systemName: "airplane.circle.fill")
                .font(Font.system(.largeTitle))
            
            VStack (alignment: .leading){
                Text(trip.destination)
                    .font(.headline)
                
                Text(trip.departureDate.formatted() )
                    .font(.subheadline)
                
                Text("Bag Size: \(trip.bagSize.rawValue.capitalized)")
                    .font(.subheadline)
            }
            .padding()
        }
    }
}

//struct TripRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        TripRowView()
//    }
//}
