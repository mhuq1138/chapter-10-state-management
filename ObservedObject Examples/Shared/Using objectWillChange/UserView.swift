//
//  UserView.swift
//  ObservedObject Examples (iOS)
//
//  Created by Mazharul Huq on 8/25/20.
//

import SwiftUI

struct UserView: View {
    @ObservedObject var user = UserInfo()
    
    var body: some View {
        
        VStack(spacing:30) {
            GroupBox(label: Text("Parent View")){
                VStack(alignment: .leading, spacing: 20){
                    TextField("Name", text: $user.name)
                    TextField("Address", text: $user.address)
                    TextField("Age", value: $user.age, formatter: NumberFormatter())
                }.textFieldStyle(RoundedBorderTextFieldStyle())
                 .padding()
                .background(Color.orange)
            }
            EditView(user:user)
        }.padding()
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
