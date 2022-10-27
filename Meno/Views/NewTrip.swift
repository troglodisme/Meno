//
//  NewTrip.swift
//  Meno
//
//  Created by Giulio Ammendola on 24/10/2022.
//

import SwiftUI

struct NewTrip: View {
    
    
    //Observe the trip model
    @ObservedObject var tripViewModel: TripViewModel
    
    //Temporary variables to create a new array element in the model
    //It should be possible to avoid this and just use the elements of the model but I am not sure how
    @State private var destinationValue: String = ""
    @State private var departureDateValue =  Date()
    @State private var returnDateValue = Date()
    
    var bags = ["small", "medium", "large"]
    @State private var selectedBag = "medium"
    
    var vehicles = ["airplane", "car", "tram"]
    @State private var selectedVehicle = "airplane"
    
    
    //we could use this for something, not currently used
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
    
    
    var body: some View {
        
        VStack{
            
            Form{
                
                //Destination (potentially a search field)
                Section{
                    TextField("Destination", text: $destinationValue)
                }
            header: {
                Text("Where to?")
            }
                
                //Departure Date (potentially a draggable calendar)
                Section{
                    
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
                    Picker("Choose Bag size", selection: $selectedBag) {
                        ForEach(bags, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.inline)
                    
                }
            header: {
                Text("Which backpack?")
                }
                
                Section{
                    Picker("Choose Vehicle", selection: $selectedVehicle) {
                        ForEach(vehicles, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                }
            header: {
                Text("How are you going?")
                }
                
            }
            
            
            Button {
                //how can we pass variables to this?
                tripViewModel.appendTrip()

                tripViewModel.trips.append(Trip(icon: selectedVehicle,
                                                destination: destinationValue,
                                                departureDate: departureDateValue,
                                                returnDate: returnDateValue,
                                                bagSize: selectedBag)
                )
            } label: {
                Text("Append demo trip")
            }
            
            NavigationLink {
                TripRecapView(tripViewModel: tripViewModel)
            } label: {
                Text("Save Trip")
            }
            
        }
        .navigationTitle("Add New Trip")
        .toolbar {
            ToolbarItem {
                //                                    Button("Save") {}
                
                Button(action: {
                    print("Go to next view")
                
                    
                }, label: {
                    Text("Next")
                    //                                        Image(systemName: "square.and.arrow.down.fill")
                })
                
            }
        }
        
        
        
        
        
    }
}

struct NewTrip_Previews: PreviewProvider {
    static var previews: some View {
        NewTrip(tripViewModel: TripViewModel())
    }
}
