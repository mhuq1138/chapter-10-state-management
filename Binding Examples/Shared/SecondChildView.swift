//
//  SecondChildView.swift
//  Binding Examples
//
//  Created by Mazharul Huq on 8/24/20.
//

import SwiftUI

struct SecondChildView: View {
    @Binding var tapCount:Int
    @Binding var greeting:String
    
    var body: some View {
        VStack(spacing:15){
            GroupBox(label: Text("Second Child View")){
                VStack{
                    Text("You have tapped \(tapCount) times.")
                    TextField("Enter greeting", text: $greeting)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button("Tap Me"){
                        tapCount += 1
                    }
                }
            }
        }
    }
}
