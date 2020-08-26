//
//  EditUserView.swift
//  Binding Examples
//
//  Created by Mazharul Huq on 8/24/20.
//

import SwiftUI

struct EditUserView: View {
    @Binding var user:User
    @Binding var showFlag:Bool
    
    var body: some View {
        Form{
            TextField("Name", text: $user.name)
            TextField("Name", text: $user.address)
            Button("Save"){
                showFlag = false
            }
        }
    }
}



