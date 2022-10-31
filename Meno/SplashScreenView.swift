////
////  SplashScreenView.swift
////  Meno
////
////  Created by Giulio on 27/10/22.
////
//
//import SwiftUI
//
//struct SplashScreenView: View {
//    let backgroundGradient = LinearGradient(
//        colors: [Color("bg_dark"), Color("bg_light")],
//        startPoint: .top, endPoint: .bottom)
//
//    @State private var isActive = false
//    @State private var size = 0.8
//    @State private var opacity = 0.5
//
//    var body: some View {
//        if isActive {
//            ContentView(tripViewModel: TripViewModel())
//        } else {
//            ZStack{
//                backgroundGradient
//
//                VStack {
//                    VStack {
//                        Image(systemName: "minus.circle")
//                            .font(.system(size:90))
//                            .foregroundColor(.white)
//                        Text("MENO")
//                            .font(.largeTitle)
//                        Text("pack less")
//
//                    }
//                    .scaleEffect(size)
//                    .opacity(opacity)
//                    .onAppear {
//                        withAnimation(.easeIn(duration: 1.2)) {
//                            self.size = 0.9
//                            self.opacity = 1.0
//                        }
//                    }
//                }
//            }
//            .ignoresSafeArea()
//            .onAppear {
//                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
//                    self.isActive = true
//                }
//            }
//        }
//    }
//
//    struct SplashScreenView_Previews: PreviewProvider {
//        static var previews: some View {
//            SplashScreenView()
//        }
//    }
//}
