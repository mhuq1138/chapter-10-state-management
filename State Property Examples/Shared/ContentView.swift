//
//  ContentView.swift
//  Shared
//
//  Created by Mazharul Huq on 8/22/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            SimplyStateView()
                .tabItem {
                    VStack {
                        Image(systemName: "1.circle")
                        Text("Simple State")
                    }
                }
            BindingControlView()
                .tabItem {
                    VStack {
                        Image(systemName: "2.circle")
                        Text("Binding Control")
                    }
                }
            CustomBindingView()
                .tabItem {
                    VStack {
                        Image(systemName: "3.circle")
                        Text("Custom Control Binding")
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
