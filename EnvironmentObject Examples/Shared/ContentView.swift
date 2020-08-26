//
//  ContentView.swift
//  Shared
//
//  Created by Mazharul Huq on 8/26/20.
//

import SwiftUI

struct ContentView: View {
    @StateObject var personData = PersonData()
    
    var body: some View {
        TabView{
            CounterInEnviromentView()
                .tabItem {
                    VStack {
                        Image(systemName: "1.circle")
                        Text("Counter in Environment")
                    }
                }
            ListWithEnvironmentView()
                .environmentObject(personData)
                .tabItem {
                    VStack {
                        Image(systemName: "2.circle")
                        Text("List in Environment")
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CounterData())
    }
}
