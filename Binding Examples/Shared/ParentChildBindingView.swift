//
//  ParentChildBindingView.swift
//  Binding Examples
//
//  Created by Mazharul Huq on 8/24/20.
//

import SwiftUI

struct ParentChildBindingView: View {
    @State private var tapCount = 0
    @State private var greeting = "Welcome!"
    
    var body: some View {
        VStack(spacing:15){
            GroupBox(label: Text("Parent View")){
                VStack{
                    Text("You have tapped \(tapCount) times.")
                    TextField("Enter greeting", text: $greeting)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button("Tap Me"){
                        tapCount += 1
                    }
                }
            }
            FirstChildView(tapCount: $tapCount, greeting: $greeting)
        }
    }
}

struct ParentChildBindingView_Previews: PreviewProvider {
    static var previews: some View {
        ParentChildBindingView()
    }
}
