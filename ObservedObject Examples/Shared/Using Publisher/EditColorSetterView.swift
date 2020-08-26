//
//  EditColorSetterView.swift
//  ObservedObject Examples (iOS)
//
//  Created by Mazharul Huq on 8/25/20.
//

import SwiftUI

struct EditColorSetterView: View {
    @ObservedObject var colorSetter:ColorSetter
    
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
            }
        }.frame(width: 340, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
         .padding(15)
    }
}


