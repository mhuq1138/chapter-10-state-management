//
//  BindingControlView.swift
//  State Property Examples
//
//  Created by Mazharul Huq on 8/23/20.
//

import SwiftUI

struct BindingControlView: View {
    @State private var greeting = "Welcome"
    @State private var showFlag = true
    @State private var width:CGFloat = 50.0
    
    var body: some View {
        Form{
            Section(header: Text("Binding TextField")){
                VStack(alignment: .leading,spacing:15){
                    Text(greeting)
                        .foregroundColor(.white)
                        .background(Color.blue)
                    TextField("Enter greeting", text: $greeting)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }.padding(.bottom, 30)
            }
            Section(header: Text("Binding Toggle")){
                Toggle(isOn: $showFlag){
                    Text("Show Slider")
                }.padding(.bottom, 30)
            }
            if showFlag{
                Section(header: Text("Binding Slider")){
                    VStack(alignment: .leading,spacing:15){
                        Color.blue
                            .frame(width: width, height: 50)
                        Slider(value: $width, in: 0.0...300.0)
                    }
                }
            }
        }
    }
}

struct BindingControlView_Previews: PreviewProvider {
    static var previews: some View {
        BindingControlView()
            .previewLayout(.fixed(width: 300, height: 500))
    }
}
