//
//  NewTrip.swift
//  Meno
//
//  Created by Giulio Ammendola on 24/10/2022.
//

import SwiftUI
import CoreLocation

struct NewTrip: View {
    
    
    //Observe the trip model
    @ObservedObject var tripViewModel: TripViewModel
    
    @Binding var isPresenting: Bool
    
    //Temporary variables to create a new array element in the model
    //It should be possible to avoid this and just use the elements of the model but I am not sure how
    @State private var destinationValue: String = ""
    @State private var departureDateValue =  Date()
    @State private var returnDateValue = Date()
    
    var bags = ["15L", "30L", "40L"]
    @State private var selectedBag = "30L"
    
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
        
        VStack {
            
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
                        
                        HStack{
                            VStack{
                                Text("Departure")
                                DatePicker(
                                    "",
                                    selection: $departureDateValue,
                                    displayedComponents: [.date]
                                )
                                .datePickerStyle(.automatic)
                            }
                            
                            Text("-")
                            
                            VStack{
                                Text("Return")
                                DatePicker(
                                    "",
                                    selection: $returnDateValue,
                                    displayedComponents: [.date]
                                )
                                .datePickerStyle(.automatic)
                                .accentColor(.pink)
                            }
                        }
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
                
                HStack{
                    
//                    Button(action: {
//                        print("test")
//                    }) {
//                        Image(systemName: "moon.stars.fill")
//                    }
//                    
//                    Button(action: {
//                        print("test")
//                    }) {
//                        Image("bag")
//                    }
//                    
//                    Button(action: {
//                        print("test")
//                    }) {
//                        Image(systemName: "car")
//                    }
                }
                

                
            }
            .navigationBarTitle("Add New Trip", displayMode: .inline)
            .toolbar {
                ToolbarItem {
                    
                    Button(action: {
                        
                        tripViewModel.trips.append(Trip(icon: selectedVehicle,
                                                        destination: destinationValue,
                                                        departureDate: departureDateValue,
                                                        returnDate: returnDateValue,
                                                        bagSize: selectedBag,
                                                        isArchived: false,
                                                        coordinate: CLLocationCoordinate2D(latitude: 51.501, longitude: -0.141),
                                                        image: Image("Placeholder"),
                                                        items: [Item(isPacked: false, name: "item 1"), Item(isPacked: false, name: "item 2")]
                            )
                        )
                        
                        isPresenting = false
                        
                    }, label: {
                        Text("Done")
                    })
                    
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    
                    Button(action: {
                                            
                        isPresenting = false
                        
                    }, label: {
                        Text("Cancel")
                    })
                    
                }
         }
        }
    }
}

//struct NewTrip_Previews: PreviewProvider {
//    static var previews: some View {
//        NewTrip(tripViewModel: TripViewModel, isPresenting: $isPresenting)
//    }
//}
