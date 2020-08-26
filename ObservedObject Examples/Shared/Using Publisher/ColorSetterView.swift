//
//  ColorSetterView.swift
//  ObservedObject Examples (iOS)
//
//  Created by Mazharul Huq on 8/25/20.
//

import SwiftUI

struct ColorSetterView: View {
    @ObservedObject var colorSetter = ColorSetter(red: 0.5, green: 0.6, blue: 0.2)
    @State private var showFlag = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            Color(.sRGB, red: colorSetter.red, green: colorSetter.green, blue: colorSetter.blue, opacity: 1.0)
                .frame(height:50)
            HStack{
                Text("Red:")
                Slider(value: $colorSetter.red, in: 0.0...1.0)
            }
            HStack{
                Text("Green:")
                Slider(value: $colorSetter.green, in: 0.0...1.0)
            }
            HStack{
                Text("Blue:")
                Slider(value: $colorSetter.blue, in: 0.0...1.0)
            }.padding(.bottom, 30)
            Button("Edit"){
                showFlag = true
            }
            
        }.sheet(isPresented: $showFlag){
            EditColorSetterView(colorSetter: colorSetter)
        }
        .frame(width: 340, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
         .padding(15)
    }
}

struct ColorSetterView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSetterView()
    }
}
