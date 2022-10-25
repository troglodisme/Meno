//
//  Model.swift
//  Meno
//
//  Created by Giulio on 25/10/22.
//

import Foundation

enum bagSize : String, CaseIterable {
    case small, medium, large
}

//enum colorTag {
//    case white, orange, blue, green, red
//}

struct Trip: Identifiable {

    let id = UUID()
    
    var destination: String
    var departureDate: Date
    var returnDate: Date
//    var colorTag: colorTag
    var bagSize: bagSize
    
//    var packignList: [allItems]
}


//Class store o un file da qualche parte?
//class ItemStore {
//
//    var allItems = [
//
//        Item(icon: "", name: ""),
//        Item(icon: "", name: ""),
//        Item(icon: "", name: ""),
//        Item(icon: "", name: "")
//    ]
//
//    func add(newItem: Item) {
//        allItems.append(newItem)
//    }s
//}


