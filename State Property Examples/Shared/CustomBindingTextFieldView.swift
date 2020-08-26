//
//  CustomBindingTextFieldView.swift
//  State Property Examples
//
//  Created by Mazharul Huq on 8/23/20.
//

import SwiftUI

struct CustomBindingTextFieldView: View {
    @State private var message = "Welcome!"
    @State private var color:Color = .red
      
      var body: some View {
          let binding = Binding(
           get: {
               message
          },
           set:{
               message = $0
               color = .green
          }
       )
          return VStack(spacing: 25){
              Text(message)
                  .font(.title)
                  .foregroundColor(.white)
                  .background(color)
              
              TextField("Enter message", text: binding)
                 .padding(30)
                 .textFieldStyle(
                  RoundedBorderTextFieldStyle())

              Button("Reset"){
                  message = "Welcome!"
                  color = .red
              }
          }
      }
}

struct CustomBindingTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBindingTextFieldView()
    }
}
