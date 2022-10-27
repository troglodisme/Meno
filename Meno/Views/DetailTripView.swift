//
//  DetailView.swift
//  Meno
//
//  Created by Giulio on 25/10/22.
//

import SwiftUI

struct TripDetailView: View {

    @Environment(\.dismiss) var dismiss
    
    var trip: Trip
    
    var body: some View {
        VStack {
//            Image(trip.imageName)
//                .resizable()
//                .frame(width: 250, height: 250, alignment: .center)

            Image("pisa")
                .resizable()
                .scaledToFit()
            
//            Text("\(trip.id)")
//                .font(.largeTitle)
//                .padding(.bottom)
            
            Text("You are going to: \(trip.destination)")
                .font(.title2)
                .padding()
            
            Text("Leaving on: \(trip.departureDate.formatted())")
                .font(.body)
            
            Text("Returning on: \(trip.returnDate.formatted())")
                .font(.body)
            
            Image(systemName: trip.icon)
                .font(Font.system(.largeTitle).bold())
            
            
            //This should be tappable to enter item list of the correct trip
            NavigationLink {
                ItemsList()

            } label: {
                Text("Your bag: \(trip.bagSize) >")
                    .font(.body)
                    .padding()
            }
            .padding()
            

            

        }
        .navigationTitle("\(trip.destination)")
        
    }
}

struct TripDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TripDetailView(trip: Trip(icon: "circle.fill", destination: "Test Destination", departureDate: Date.now, returnDate: Date.now, bagSize: "Test bag size"))
    }
}
