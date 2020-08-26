//
//  ContentView.swift
//  Shared
//
//  Created by Mazharul Huq on 8/25/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        TabView{
            ColorSetterView()
                .tabItem {
                    VStack {
                        Image(systemName: "1.circle")
                        Text("Using Publisher")
                    }
                }
            UserView()
                .tabItem {
                    VStack {
                        Image(systemName: "2.circle")
                        Text("Using objectWillChange")
                    }
                }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
