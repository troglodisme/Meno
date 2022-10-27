//
//  Model.swift
//  Meno
//
//  Created by Giulio on 25/10/22.
//

import Foundation

//enum bagSize : String, CaseIterable {
//    case small, medium, large
//}


struct Trip: Identifiable {

    let id = UUID()
    
    var icon: String
    var destination: String
    var departureDate: Date
    var returnDate: Date
    var bagSize: String //dovrebbe essere un array o enum ma non mi riusciva :(
    
    //add a variable for image or map pin
    //var colorTag: colorTag

//    var packingList: [ItemStore]
}


//struct Item {
//
//    var isPacked: Bool
//    var name: String
//
//    init(isPacked: Bool, name: String) {
//        self.isPacked = isPacked
//        self.name = name
//    }
//}
//
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
//
////    func add(newItem: Item) {
////        allItems.append(newItem)
////    }
//}


