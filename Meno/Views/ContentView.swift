//
//  ContentView.swift
//  Meno
//
//  Created by Giulio Ammendola on 24/10/2022.
//

import SwiftUI


struct ContentView: View {
    
    @ObservedObject var tripVM = TripViewModel()
    @State var selectedTrip: Trip? = nil //what's this doing?
    @State var isVisible = false
    
    var body: some View {
        
//load mock date example
//        let florence: Trip = trip1
//        let newOrleans: Trip = trip2

        
        NavigationView {
            
            VStack{
                
                List {
                    ForEach (tripVM.trips) { trip in
                                                
                        Button {
                            self.selectedTrip = trip
                            self.isVisible.toggle()
                        } label: {
                            TripRowView(trip: trip)
                        }
                    }
                    .onDelete(perform: tripVM.remove)

                }
                .sheet(item: $selectedTrip) { trip in
                    DetailView(trip: trip)
                }
                
                
                NavigationLink {
                    NewTrip()
                } label: {
                    Text("Add New Trip")
                }
                
            }

            .navigationTitle("Trips")
        }
    }
}


struct TripRowView: View {
    
    var trip: Trip
    
    var body: some View {
        HStack{
//            Image("Domenico")
//                .resizable()
//                .frame(width: 50, height: 50)
            VStack (alignment: .leading){
                Text(trip.destination)
                    .font(.headline)
                Text(trip.departureDate.formatted())
                    .font(.subheadline)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
