//
//  ContentView.swift
//  Meno
//
//  Created by Giulio Ammendola on 24/10/2022.
//

import SwiftUI


// How to use user input from New Trip into next view (it works as a string, but we need to create an object as part of the Trips struct.

struct ContentView: View {
    
    @ObservedObject var tripViewModel = TripViewModel() //instance of TripviewModel model
    @State var selectedTrip: Trip? = nil //selects specific trip on tap
    @State var isVisible = false //displays trip details on a sheet view
    
    var body: some View {
        
        NavigationView {
            
            VStack{
                
                //Display a list of all existing trips
                
                List {
                
                    //TO DO: Implement two sections
                    // 1) Upcoming (if date is newer than today)
                    // 2) Archive
                    
                    ForEach (tripViewModel.trips) { trip in
                            
                        //Show a button for each trip
                        Button {
                            self.selectedTrip = trip
                            self.isVisible.toggle()
                        } label: {
                            TripRowView(trip: trip)  //trip? trip?
                        }
                    }
                    .onDelete(perform: tripViewModel.remove)

                }
                .sheet(item: $selectedTrip) { trip in
                    TripDetailView(trip: trip)
                }
                                
                //TO DO: Change navigation method to something better
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




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
