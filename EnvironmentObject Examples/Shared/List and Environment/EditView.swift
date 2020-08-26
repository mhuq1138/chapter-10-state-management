//
//  EditView.swift
//  StateObject Examples
//
//  Created by Mazharul Huq on 8/26/20.
//

import SwiftUI

struct EditView: View {
    @EnvironmentObject var personData:PersonData
    @Binding var addFlag: Bool
    @State private var name = ""
    @State private var address = ""
    
    var body: some View {
        VStack(spacing:15){
            TextField("Name", text: $name)
            TextField("Address", text: $address)
            Button("Save"){
                personData.persons.append(Person(name: name, address: address))
                addFlag = false
            }
        }.textFieldStyle(RoundedBorderTextFieldStyle())
         .padding(15)
    }
}


