//
//  NewTrip.swift
//  Meno
//
//  Created by Giulio Ammendola on 24/10/2022.
//

import SwiftUI

struct NewTrip: View {
    
    @ObservedObject var tripViewModel = TripViewModel() //instance of TripviewModel model
    
    @State var destinationValue: String = ""
    @State var departureDateValue =  Date()
    @State var returnDateValue = Date()
    //    @State var bagSizeValue:
    
    @State private var selectedBagSize: bagSize = .medium //standard value for picker
    
    
    var body: some View {
        
        VStack{
            
            VStack(alignment: .leading) {
                
                Text("Where to?")
                    .font(.callout)
                    .bold()
                    .foregroundColor(.blue)
                
                TextField(
                    "Destination",
                    text: $destinationValue //how can I write to the object inside TripViewModel?
                )
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
                
                
                //Departure Date (it would be nice to have a draggable calendar to select duration
                Text("When's your trip?")
                    .font(.callout)
                    .bold()
                    .foregroundColor(.blue)
                
                DatePicker(
                    "Departure",
                    selection: $departureDateValue,
                    displayedComponents: [.date]
                )
                .datePickerStyle(.compact)
                .accentColor(.pink)
                
                
                
                DatePicker(
                    "Return",
                    selection: $returnDateValue,
                    displayedComponents: [.date]
                )
                .datePickerStyle(.compact)
                
                
                Text("Bag Size")
                    .font(.callout)
                    .bold()
                    .foregroundColor(.blue)
                
                
                Picker("Bag Size", selection: $selectedBagSize) {
                    
                    Text("Small").tag(bagSize.small)
                    Text("Medium").tag(bagSize.medium)
                    Text("Large").tag(bagSize.large)
                    
                }
                .pickerStyle(.segmented)
                
            }
            .padding()
            
            
            
            Button {
                addNewTrip()
            } label: {
                Text("Print Monitor Test")
            }
            
            VStack {
                
                NavigationLink {
                    TripRecapView()
                } label: {
                    Text("Next")
                }
                
            }
            .padding()
            
        }
        .padding()
        .navigationTitle("Add New Trip")
        
    }
    
    
    func addNewTrip() {
        
        print("You are going to \(destinationValue), \(departureDateValue), \(returnDateValue)")
        
        //create a new object Trip and append to view model
    }
    
    
}


struct NewTrip_Previews: PreviewProvider {
    static var previews: some View {
        NewTrip()
    }
}
