//
//  Model.swift
//  Meno
//
//  Created by Giulio on 25/10/22.
//

import Foundation

struct Trip {

    var destination: String
    var departureDate: Date
    var returnDate: Date
//    var colorTag: [String]
    var bagSize: bagSize? 

//    var packignList: [allItems]
}

enum bagSize: Int {

    case small
    case medium
    case large

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
//    }
//}





