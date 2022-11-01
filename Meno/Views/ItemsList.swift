//
//  ItemsList.swift
//  Meno
//
//  Created by Giulio Ammendola on 25/10/2022.
//

//https://www.youtube.com/watch?v=MxuenEwKp28

import SwiftUI
import CoreLocation

struct MyItem: Identifiable {
    let id = UUID()
    let name: String
    var isPacked: Bool
}

struct ItemsList: View {
    
    var trip: Trip
    
    @State private var items = [
        MyItem(name: "Tent", isPacked: false),
        MyItem(name: "Sleeping bag", isPacked: false),
        MyItem(name: "Bear spray", isPacked: false),
        MyItem(name: "Battery pack", isPacked: false),
        MyItem(name: "Socks", isPacked: false),
        MyItem(name: "Shirts", isPacked: false),
        MyItem(name: "Jacket", isPacked: false),
        MyItem(name: "Toothbrush", isPacked: false),
        MyItem(name: "Toothpaste", isPacked: false),
        MyItem(name: "Soap", isPacked: false),
        MyItem(name: "Sunglasses", isPacked: false),
        MyItem(name: "Watch", isPacked: false),
        MyItem(name: "GoPro", isPacked: false),
        MyItem(name: "Earphones", isPacked: false),
    ]
    
    var body: some View {
        
        VStack{
            
            Image("\(trip.bagSize)")
                .resizable()
                .scaledToFit()
                .frame(width: 50)
            
            List($items) { $item in
                
                HStack{
                    
                    Image(systemName: item.isPacked ? "checkmark.circle" : "circle")
                    
                        .onTapGesture {
                            item.isPacked.toggle()
                        }

                    Text(item.name)
                }
            }

        }
        .navigationTitle("Your Items for \(trip.destination)")
        .toolbar {
            ToolbarItem {
                
                Button(action: {
                                        
                }, label: {
                    Text("Done")
                })
                
            }
        }
        
        
        
        
        
        
        

    }
}

struct ItemsList_Previews: PreviewProvider {
    static var previews: some View {
        ItemsList(trip: Trip(icon: "tram",
                         destination: "Florence",
                         departureDate: Date.distantPast,
                         returnDate: Date.distantFuture,
                         bagSize: "20L",
                         isArchived: false,
                         coordinate: CLLocationCoordinate2D(latitude: 43.769, longitude: 11.255),
                         image: Image("Firenze")
                        )
        )
    }
}
