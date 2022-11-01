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
    
//    var ItemsStore: []
}

/*
 The purpose of the app is for the user to receive some tips on what to bring when going backpacking.
 Each Trip should also have a list of items attached to it and it should be possible to edit them and add new ones.
 For example, if I am going to San Francisco and I have selected a 20L backpack my item list will only show a set of items
 that make sense for that type of backpack. While if i choose a 40L backpack i will get more items.
 It should then be possible to toggle the items (to show that I have packed them), store the toggle state, and add new items as well).
 
 */

//add item category to subgroup

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


