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
    
    @ObservedObject var trip: Trip
    @State var selections: SelectKeeper = SelectKeeper<Item>()
    
    var body: some View {
        
        VStack{
            
            List(trip.items) { item in
                
                HStack{
                    Image(systemName: selections.isSelected(item) ? "checkmark.circle" : "circle")
                    
                        .onTapGesture {
                            selections.toggleSelection(item)
                            trip.packedItems.append(item)
                        }
                    
                    Text(item.name)
                }
            }
        }
//        .navigationBarItems(trailing: EditButton())
        .navigationTitle("Your Items")


    }
}

struct SelectKeeper<T: Hashable> {
    
    var selections = Set<T>()
    
    mutating func select(_ value: T) {
        selections.insert(value)
    }
    
    mutating func deselect(_ value: T) {
        selections.remove(value)
    }
    
    mutating func toggleSelection(_ value: T) {
        if selections.contains(value) {
            selections.remove(value)
        } else {
            selections.insert(value)
        }
    }
    
    func isSelected(_ value: T) -> Bool {
        return selections.contains(value)
    }
    
    typealias SelectionValue = T
}


struct ItemsList_Previews: PreviewProvider {
    static var previews: some View {
        ItemsList(trip: Trip (icon: "tram",
                              destination: "Florence",
                              departureDate: Date.distantPast,
                              returnDate: Date.distantFuture,
                              bagSize: "15L",
                              isArchived: true,
                              coordinate: CLLocationCoordinate2D(latitude: 43.769, longitude: 11.255),
                              image: Image("Firenze"),
                              items: [Item(isPacked: false, name: "passport 1"), Item(isPacked: false, name: "keys")]
                        )
        )
    }
}
