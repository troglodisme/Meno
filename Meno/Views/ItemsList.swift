//
//  ItemsList.swift
//  Meno
//
//  Created by Giulio Ammendola on 25/10/2022.
//

//https://www.youtube.com/watch?v=MxuenEwKp28

import SwiftUI

struct MyItem: Identifiable {
    let id = UUID()
    let name: String
    var isCompleted: Bool
}

struct ItemsList: View {
    
    @State private var items = [
        MyItem(name: "tent", isCompleted: false),
        MyItem(name: "sleeping bag", isCompleted: false),
        MyItem(name: "bear spray", isCompleted: false),
        MyItem(name: "battery pack", isCompleted: false)
    ]
    
    var body: some View {
        
        VStack{
            
            List($items) { $item in
                
                HStack{
                    Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                    
                        .onTapGesture {
                            item.isCompleted.toggle()
                        }
                    
                    Text(item.name)
                }
 
            }

        }
        .navigationTitle("Your Items")


    }
}

struct ItemsList_Previews: PreviewProvider {
    static var previews: some View {
        ItemsList()
    }
}
