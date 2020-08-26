//
//  ContentView.swift
//  Shared
//
//  Created by Mazharul Huq on 8/23/20.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView{
            ParentChildBindingView()
                .tabItem {
                    VStack {
                        Image(systemName: "1.circle")
                        Text("Parent Child Binding")
                    }
                }
            UserInfoView()
                .tabItem {
                    VStack {
                        Image(systemName: "2.circle")
                        Text("UserInfo Updating")
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
