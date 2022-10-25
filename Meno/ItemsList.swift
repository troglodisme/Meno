//
//  ItemsList.swift
//  Meno
//
//  Created by Giulio Ammendola on 25/10/2022.
//

import SwiftUI

struct ItemsList: View {
    var body: some View {
        
        List {
            
            //These need to be all dynamic of course
            Section(header: Text("Basics")) {
                Text("Passport")
                Text("Wash bag")
                Text("Laptop")
                Text("...")
            }
            
            Section(header: Text("Camping")) {
                Text("Tent")
                Text("Torch")
                Text("Bear spray")
                Text("...")
            }
            
        }
    }
}

struct ItemsList_Previews: PreviewProvider {
    static var previews: some View {
        ItemsList()
    }
}
