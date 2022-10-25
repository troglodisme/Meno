//
//  ContentView.swift
//  Meno
//
//  Created by Giulio Ammendola on 24/10/2022.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        
        //mock date example
        let florence: Trip = trip1
        let newOrleans: Trip = trip2
        
        NavigationView {
            
            ZStack {
                VStack {
                    
                    VStack{
                        Text(florence.destination)
                            .font(.title)
                            .padding()
                        
                        Text("Leaving on: \(florence.departureDate.formatted(.dateTime.day().month()) )")                       
                    }
                    .padding()
                    
                    VStack{
                        Text(newOrleans.destination)
                            .font(.title)
                            .padding()
                        
                        Text("Leaving on: \(florence.departureDate.formatted(.dateTime.day().month()) )")
                    }
                    .padding()
                    
                    
                    //if no trips exist, show "there are no trips yet, add one"
                    
                    
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
