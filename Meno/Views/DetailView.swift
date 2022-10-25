//
//  DetailView.swift
//  Meno
//
//  Created by Giulio on 25/10/22.
//

import SwiftUI

struct DetailView: View {

    @Environment(\.dismiss) var dismiss
    
    var trip: Trip
    
    var body: some View {
        VStack {
//            Image(trip.imageName)
//                .resizable()
//                .frame(width: 250, height: 250, alignment: .center)
            Spacer()
            Text(trip.destination)
                .font(.largeTitle)
                .padding(.bottom)
            Text(trip.destination)
                .font(.body)
                .padding()
            
            Button {
                dismiss()
            } label: {
                Text("Close ME!!!")
                    .font(.title)
            }

        }
        .navigationTitle("\(trip.destination)")
        
    }
}
