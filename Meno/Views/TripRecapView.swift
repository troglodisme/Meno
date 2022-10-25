//
//  BagSelection.swift
//  Meno
//
//  Created by Giulio Ammendola on 24/10/2022.
//



import SwiftUI

struct TripRecapView: View {
    

@ObservedObject var tripViewModel = TripViewModel() //instance of TripviewModel model
    
    
    var body: some View {
        
        VStack{
            
            
            //Here we need to implement a data structure to store/reuse the values entered by the user
            VStack{
                
                Text("You are going to: \(tripViewModel.trips[1].destination)")  //this should be showing the newly created element
                Text("On: \(tripViewModel.trips[1].departureDate.formatted())")
                Text("For: [duration] nights") //calculate number of nights between two dates
                Text("With a: [bagSize] bag") //calculate number of nights between two dates
                
            }
            .padding()
                        
            
 
        }
        .navigationTitle("Trip Recap")
        
    }
}


struct TripRecapView_Previews: PreviewProvider {
    static var previews: some View {
        TripRecapView()
    }
}
    

