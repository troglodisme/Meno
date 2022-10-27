//
//  ContentView.swift
//  Meno
//
//  Created by Giulio Ammendola on 24/10/2022.

import SwiftUI

// How to use user input from New Trip into next view (it works as a string, but we need to create an object as part of the Trips struct.

struct ContentView: View {
    
    @ObservedObject var tripViewModel: TripViewModel
    
    @State var selectedTrip: Trip? = nil //selects specific trip on tap
    @State var isVisible = false //displays trip details on a sheet view
    
    @State var isPresenting: Bool = false
    
    var body: some View {
        
        NavigationView {
                        
            VStack{
                
                Button {
                    tripViewModel.appendTrip()
                } label: {
                    Text("Add sample trip")
                }
                                
                List {
                    
                    //Sort only those with recent date
                    Section(header: Text("Upcoming"))
                    {
                        Text("New trips go here. how do we filter them?")
                    
                        Text("\(tripViewModel.trips.last!.destination)")
                    }
                    
                    
                    Section(header: Text("Archive"))
                    {
                        ForEach(tripViewModel.trips) { trip in                   NavigationLink(destination: TripDetailView(trip: trip)) {
                            
                            TripRowView(trip: trip)
                            }
                        }
                    }
                    
                }
                .listStyle(.plain)
                
                .sheet(isPresented: $isPresenting) {
                    NavigationView{
                        
                        //                        Text("Content View goes here")
                        NewTrip(tripViewModel: TripViewModel())
                        
                    }
                }
                        
                
                //TO DO: Change navigation method to something better
//                NavigationLink {
//                    NewTrip(tripViewModel: TripViewModel() )
//                } label: {
//                    Text("Add New Trip")
//                }
                
            }
            .navigationTitle("Trips")
            .toolbar {
                
                ToolbarItem(placement: .bottomBar) {
                    Button(action: {
                        print("open sheet")
                        isPresenting = true
                        
                    }, label: {
                        Image(systemName: "plus.circle")
                    })
                }
            }
                        
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tripViewModel: TripViewModel())
    }
}
