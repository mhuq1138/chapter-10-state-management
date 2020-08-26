//
//  EnvironmentObject_ExamplesApp.swift
//  Shared
//
//  Created by Mazharul Huq on 8/26/20.
//

import SwiftUI

@main
struct EnvironmentObject_ExamplesApp: App {
    @StateObject var counterData = CounterData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(counterData)
        }
    }
}
