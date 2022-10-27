//
//  BagSelection.swift
//  Meno
//
//  Created by Giulio Ammendola on 24/10/2022.
//



import SwiftUI

struct TripRecapView: View {
    
    @ObservedObject var tripViewModel: TripViewModel //instance of TripviewModel model
    
    //    @Binding var destinationValue: String
    
    var body: some View {
        
        VStack{
            
            
            //Here we need to implement a data structure to store/reuse the values entered by the user
            VStack{
                
                Text("You are going to: \(tripViewModel.trips.last!.destination)")
                
                Text("On: \(tripViewModel.trips.last!.departureDate.formatted())")
                
                Text("With a: \(tripViewModel.trips.last!.bagSize) bag")
                
                Image(systemName: tripViewModel.trips.last!.icon)
                    .font(Font.system(.largeTitle).bold())


                NavigationLink {
                    ItemsList()

                } label: {
                    Text("Go to Item list")
                }
                .padding()
                

//                Button {
//
//                } label: {
//                    DetailTripView(trip: tripViewModel.trips.last!)  //trip? trip?
//                }
            

            
            //                Text("For: [duration] nights") //calculate number of nights between two dates
            
            
            
        }
        .padding()
        
    }
        .navigationTitle("Trip Recap")
        .toolbar {
            ToolbarItem {
                //                                    Button("Save") {}
                
                Button(action: {
                    print("Go back to Main View")
                
                    
                }, label: {
                    Text("Done")
                    //                                        Image(systemName: "square.and.arrow.down.fill")
                })
                
            }
        }
    
}
}


struct TripRecapView_Previews: PreviewProvider {
    static var previews: some View {
        TripRecapView(tripViewModel: TripViewModel() )
    }
}


