//
//  MenoApp.swift
//  Meno
//
//  Created by Giulio Ammendola on 24/10/2022.
//

import SwiftUI

@main
struct MenoApp: App {
    
//    init() {
//        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.orange]
//    }
    
    var body: some Scene {
        WindowGroup {
//            SplashScreenView()
             ContentView(tripViewModel: TripViewModel())
//            ContentView()
        }
    }
}
