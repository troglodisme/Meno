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
//import CoreLocation
//import MapKit

struct Trip: Identifiable {

//    let id = UUID()
    let id = UUID()
    
    var icon: String
    var destination: String
    var departureDate: Date
    var returnDate: Date
    var bagSize: String //dovrebbe essere un array o enum ma non mi riusciva :(
    var isArchived: Bool
    var coordinate: CLLocationCoordinate2D
    var image: Image
    
}



//add item category to subgroup on the view

//var ItemsStore = [
//    Item(isPacked: false, name: "item 1"),
//    Item(isPacked: false, name: "item 2"),
//    Item(isPacked: false, name: "item 3"),
//    Item(isPacked: false, name: "item 4")
//]
//
//
//var categories = [
//
//    "Accessory", "Clothes", "Documents", "Health", "Housing", "Makeup", "Others"
//]

//add function to be able to add new items

////Class store o un file da qualche parte?
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

//    func add(newItem: Item) {
//        allItems.append(newItem)
//    }
    
//}


