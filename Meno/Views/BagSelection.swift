//
//  BagSelection.swift
//  Meno
//
//  Created by Giulio Ammendola on 24/10/2022.
//



import SwiftUI

struct BagSelection: View {
    
//    @Binding var destination: String
    
    @State private var chosenBag: Int = 0
    @State private var isItemListOpen: Bool = false
    
//    @ObservedObject var trip: MyTrip
    
    
    var body: some View {
        
        VStack{
            
            
            //Here we need to implement a data structure to store/reuse the values entered by the user
            VStack{
                
//                Text(trip.city)
                
                Text("You are going to [destination]")
                Text("On: [date]")
                Text("For: [duration] nights")
            }
            .padding()
                        
            Text("Suggest bag")
                .font(.title2)
            
            //Icon or illustration of the bags
            
            Button {
                print("select bag 1")
                
            } label: {
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.green)
                        .frame(width: 150, height: 100)
                    
                    Text("15L")
                        .font(.title)
                        .foregroundColor(.white)
                }
            }
            

            Button {
                print("select bag 2")
                
            } label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.green)
                        .frame(width: 150, height: 100)
                    
                    Text("30L")
                        .font(.title)
                        .foregroundColor(.white)
                }
            }
            
            
            Button {
                print("select bag 3")
                
            } label: {
                
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.green)
                        .frame(width: 150, height: 100)
                    
                    Text("40L")
                        .font(.title)
                        .foregroundColor(.white)
                }
            }
 
        }
        .navigationTitle("Choose Bag")
        
    }
}


struct BagSelection_Previews: PreviewProvider {
    static var previews: some View {
        BagSelection()
    }
}
