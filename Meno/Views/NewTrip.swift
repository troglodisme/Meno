//
//  NewTrip.swift
//  Meno
//
//  Created by Giulio Ammendola on 24/10/2022.
//

import SwiftUI

struct NewTrip: View {
    
    @State private var destination: String = ""
    @State private var departureDate = Date()
    @State private var returnDate = Date()
    
    var body: some View {
        
        VStack{
            
            //Destination
            VStack(alignment: .leading) {
                Text("Where to?")
                    .font(.callout)
                    .bold()
                    .foregroundColor(.blue)
                
                TextField(
                    "Destination",
                    text: $destination
                )
                .textFieldStyle(RoundedBorderTextFieldStyle())

            }
            .padding()
            
            
            //Departure Date (it would be nice to have a draggable calendar to select duration
            VStack(alignment: .leading) {
                Text("When's your trip?")
                        .font(.callout)
                        .bold()
                        .foregroundColor(.blue)
                
                DatePicker(
                    "Departure",
                    selection: $departureDate,
                    displayedComponents: [.date]
                )
                .datePickerStyle(.compact)
                .accentColor(.pink)

            }
            .padding()
            
            
            //Return date
            VStack(alignment: .leading) {
                
                DatePicker(
                    "Return",
                    selection: $returnDate,
                    displayedComponents: [.date]
                )
                .datePickerStyle(.compact)
                
            }
            .padding()
            
            
            Button {
                createNewTrip()

            } label: {
                Text("Create New Trip Test Button")
            }

//      Or we could have a stepper instead of return date
            
//            VStack(alignment: .leading) {
//                HStack{
//                    Text("Nights: \(numberOfNights)")
//                    Stepper("", value: $numberOfNights, in: 0...30)
//                }
//            }
//            .padding()
            
            
            VStack {
                
                NavigationLink {
                    BagSelection()
                } label: {
                    Text("Next")
                }

            }
            .padding()
  
        }
        .padding()
        .navigationTitle("Add New Trip")
        
    }
    
    func createNewTrip() {
        
        //
        print($destination)
        print($departureDate)
    }

}


struct NewTrip_Previews: PreviewProvider {
    static var previews: some View {
        NewTrip()
    }
}
