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
    var isPacked: Bool
}

struct ItemsList: View {
    
    @State private var items = [
        MyItem(name: "tent", isPacked: false),
        MyItem(name: "sleeping bag", isPacked: false),
        MyItem(name: "bear spray", isPacked: false),
        MyItem(name: "battery pack", isPacked: false)
    ]
    
    var body: some View {
        
        VStack{
            
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
//        .navigationBarItems(trailing: EditButton())
        .navigationTitle("Your Items")


    }
}

struct ItemsList_Previews: PreviewProvider {
    static var previews: some View {
        ItemsList()
    }
}
