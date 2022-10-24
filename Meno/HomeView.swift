//
//  ContentView.swift
//  Meno
//
//  Created by Giulio Ammendola on 24/10/2022.
//

import SwiftUI


struct ContentView: View {

    var body: some View {
        NavigationView {

            ZStack {
                VStack {

                    Text("No trips yet...")
                        .padding()
                                        
                    NavigationLink {
                        NewTrip()
                    } label: {
                        Text("Add New Trip")
                    }
                }
            }
            .navigationTitle("Trips")

        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
