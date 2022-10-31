//
//  Model.swift
//  Meno
//
//  Created by Giulio on 25/10/22.
//

import Foundation
import CoreLocation

//enum bagSize : String, CaseIterable {
//    case small, medium, large
//}

import Foundation
import SwiftUI


class Trip: Identifiable, ObservableObject {
    
    let id = UUID()
    
    var icon: String
    var destination: String
    var departureDate: Date
    var returnDate: Date
    var bagSize: String
    var isArchived: Bool
    var coordinate: CLLocationCoordinate2D
    var image: Image
    
    var items: [Item] //we are changing each item to store isPacked state
    var packedItems = [Item]() //empty array
    
    
    
    init(icon: String, destination: String, departureDate: Date, returnDate: Date, bagSize: String, isArchived: Bool, coordinate: CLLocationCoordinate2D, image: Image, items: [Item]) {
        self.icon = icon
        self.destination = destination
        self.departureDate = departureDate
        self.returnDate = returnDate
        self.bagSize = bagSize
        self.isArchived = isArchived
        self.coordinate = coordinate
        self.image = image
        self.items = items
    }
    
}

class Item: Identifiable, ObservableObject, Hashable {
    
    static func == (lhs: Item, rhs: Item) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    var id = UUID()
    
    @Published var isPacked: Bool
    var name: String
    
    init(id: UUID = UUID(), isPacked: Bool, name: String) {
        self.id = id
        self.isPacked = isPacked
        self.name = name
    }
}






//class ItemStore {
//
//    var allItems = [
//
//        Item(isPacked: false, name: "item 1"),
//        Item(isPacked: false, name: "item 2"),
//        Item(isPacked: false, name: "item 3"),
//        Item(isPacked: false, name: "item 4")
//
//    ]
//
//    func add(newItem: Item) {
//        allItems.append(newItem)
//    }
//}


//add item category to subgroup on the view

//var ItemsStore = [
//    Item(isPacked: false, name: "item 1"),
//    Item(isPacked: false, name: "item 2"),
//    Item(isPacked: false, name: "item 3"),
//    Item(isPacked: false, name: "item 4")
//]
//
//var categories = [
//
//    "Accessory", "Clothes", "Documents", "Health", "Housing", "Makeup", "Others"
//]

//add function to be able to add new items


