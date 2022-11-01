//
//  ContentView.swift
//  Meno
//
//  Created by Giulio Ammendola on 24/10/2022.

import SwiftUI
// How to use user input from New Trip into next view (it works as a string, but we need to create an object as part of the Trips struct.

struct ContentView: View {
    
    @StateObject var tripViewModel: TripViewModel
    
    @State var selectedTrip: Trip? = nil //selects specific trip on tap
        
    @State var isPresenting: Bool = false
    
    var body: some View {
        
        NavigationView {
                        
            VStack{
                
                List {
                    
                    //Sort only those with recent date
                    Section(header: Text("Upcoming"))
                    {

                        ForEach(tripViewModel.upcomingTrips) { trip in

                            NavigationLink(destination: TripDetailView(tripViewModel: TripViewModel(), trip: trip)) {

                            TripRowView(trip: trip)
                            }
                        }
                        .onDelete(perform: tripViewModel.remove)
                    }

                    
                    Section(header: Text("Where you've been"))
                    {
                        ForEach(tripViewModel.archivedTrips) { trip in

                            NavigationLink(destination: TripDetailView(tripViewModel: TripViewModel(), trip: trip)) {

                            TripRowView(trip: trip)
                            }
                        }
                        .onDelete(perform: tripViewModel.remove)
                    }
                    
                }

                .listStyle(.plain)
                
                .sheet(isPresented: $isPresenting) {
                    NavigationView{
                        
                        NewTrip(tripViewModel: tripViewModel, isPresenting: $isPresenting)
                    }
                }
            }
            .navigationTitle("Trips")
            
            .toolbar {

                //Add trip
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("open sheet")
                        isPresenting = true

                    }, label: {
                        Image(systemName: "plus.circle")
                    })
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
            }
        }
//        .accentColor(Color(.label))

    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tripViewModel: TripViewModel())
    }
}
