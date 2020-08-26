//
//  EditView.swift
//  ObservedObject Examples (iOS)
//
//  Created by Mazharul Huq on 8/25/20.
//

import SwiftUI

struct EditView: View {
    @ObservedObject var user:UserInfo
    
    var body: some View {
        GroupBox(label: Text("Child View")){
            VStack(alignment: .leading, spacing: 20){
                TextField("Name", text: $user.name)
                TextField("Address", text: $user.address)
                TextField("Age", value: $user.age, formatter: NumberFormatter())
            }.textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            .background(Color.yellow)
        }
    }
}

