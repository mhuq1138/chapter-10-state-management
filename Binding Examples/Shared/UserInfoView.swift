//
//  UserInfoView.swift
//  Binding Examples
//
//  Created by Mazharul Huq on 8/24/20.
//

import SwiftUI

struct UserInfoView: View {
    @State private var user = User(name: "Johnny Smith", address: "45 Lender Lane")
    @State private var showFlag = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            Text("Name:     ")
                .foregroundColor(.secondary)
                + Text(user.name)
            Text("Address: ")
                .foregroundColor(.secondary)
                + Text(user.address)
            Button("Edit"){
                showFlag = true
            }
        }.sheet(isPresented: $showFlag){
            EditUserView(user: $user, showFlag: $showFlag)
        }
    }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView()
    }
}
