//
//  BagButton.swift
//  Meno
//
//  Created by Giulio on 31/10/22.
//

import SwiftUI
import CoreLocation

struct BackpackRow: View {
    
    var bag: String
    
    var body: some View {
        
        VStack{
            HStack{
                                
                Image("\(bag)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30)
                
                Spacer()
                
                Text("\(bag)")
                    .font(.title2)
                                
            }
            .padding()

        }

        
    }
}

struct BackpackRow_Previews: PreviewProvider {
    static var previews: some View {
        BackpackRow(bag: "40L")
    }
}

