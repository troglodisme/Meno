//
//  NewTrip.swift
//  Meno
//
//  Created by Giulio Ammendola on 24/10/2022.
//

import SwiftUI

struct NewTrip: View {
        
    @State private var destinationValue: String = ""
    @State private var departureDateValue =  Date()
    @State private var returnDateValue = Date()
    
    @State private var selectedBagSize: bagSize = .medium //standard value for picker
    
    @FocusState private var destinationIsFocused: Bool
    
    //resets values of text field
    func reset() {
        destinationValue = ""
    }
    
    //returns number of seconds that the trip will take, need to convert to days somehow
    var tripLength: Int {

        let delta = departureDateValue.distance(to: returnDateValue)
        return Int(delta)
    }
    
    //another similar try
//    func calculateDelta(_ from: Date, and to: Date) -> Int {
//        let numberOfDays = Calendar.current.dateComponents([.day], from: from, to: to)
//
//        return numberOfDays.day!
//    }
    
    var body: some View {
        
        VStack{
            
            Form{
                
                Section{
                    TextField("Destination", text: $destinationValue)
                }
            header: {
                Text("Where to?")
            }
                
                
                Section{
                    
                    //Departure Date (it would be nice to have a draggable calendar to select duration
                    
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
                }
            header: {
                Text("When's your trip?")
            }
                
                
                Section{
                    
                    Picker("Bag Size", selection: $selectedBagSize) {
                        
                        Text("Small").tag(bagSize.small)
                        Text("Medium").tag(bagSize.medium)
                        Text("Large").tag(bagSize.large)
                        
                    }
                    .pickerStyle(.segmented)
                }
            header: {
                Text("Which backpack?")
            }
                
                Section{
                    Text("Great! You are going to \(destinationValue), for \(tripLength) seconds")
                    
                }
            }
            
            NavigationLink {
                TripRecapView(destinationValue: $destinationValue)
            } label: {
                Text("Save Trip")
            }
            
        }
        .navigationTitle("Add New Trip")

        
        
        //
        //            Button {
        //                addNewTrip()
        //            } label: {
        //                Text("Print Console Test")
        //            }
        //
        //

        //
        
        
        
        //    func addNewTrip() {
        //
        //        print("You are going to \(destinationValue), \(departureDateValue), \(returnDateValue)")
        //
        //        //create a new object Trip and append to view model
        //    }
        
        
    }
}

struct NewTrip_Previews: PreviewProvider {
    static var previews: some View {
        NewTrip()
    }
}
