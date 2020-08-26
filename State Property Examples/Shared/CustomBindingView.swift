//
//  CustomBindingView.swift
//  State Property Examples
//
//  Created by Mazharul Huq on 8/23/20.
//

import SwiftUI

struct CustomBindingView: View {
    var body: some View{
        VStack(spacing:30){
            GroupBox(label: Text("Custom Binding Toggle")){
                Form{CustomBindingToggleView()
                    
                }
            }
            GroupBox(label: Text("Custom Binding TextField")){
                Form{CustomBindingTextFieldView()
                    
                }
            }
        }.padding()
    }
}

struct CustomBindingView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBindingView()
    }
}
