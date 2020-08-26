//
//  SimplyStateView.swift
//  State Property Examples
//
//  Created by Mazharul Huq on 8/22/20.
//

import SwiftUI

struct SimplyStateView: View {
    @State private var message = "Hello, World!"

    var body: some View {
        VStack {
            Text(message)
                .padding(.bottom, 30)
            Button("Change Message"){
                if message == "Hello, World!"{
                    message = "Hello from swiftUI"
                }
                else{
                    message = "Hello, World!"
                }
            }
        }
    }
}

struct SimplyStateView_Previews: PreviewProvider {
    static var previews: some View {
        SimplyStateView()
    }
}
