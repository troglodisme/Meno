//
//  MenoApp.swift
//  Meno
//
//  Created by Giulio Ammendola on 24/10/2022.
//

import SwiftUI

@main
struct MenoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(tripViewModel: TripViewModel())
        }
    }
}
