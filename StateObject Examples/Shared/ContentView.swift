//
//  ContentView.swift
//  Shared
//
//  Created by Mazharul Huq on 8/25/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            WhyStateObjectView()
                .tabItem {
                    VStack {
                        Image(systemName: "1.circle")
                        Text("Why @StateObject")
                    }
                }
            ListWithStateObjectView()
                .tabItem {
                    VStack {
                        Image(systemName: "2.circle")
                        Text("List and @StateObject")
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
