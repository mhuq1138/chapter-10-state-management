//
//  WhyStateObjectView.swift
//  StateObject Examples
//
//  Created by Mazharul Huq on 8/25/20.
//

import SwiftUI

struct WhyStateObjectView: View {
    @State private var message = "Welcome "
    var body: some View {
        VStack(spacing:20){
            Text(message)
            Button("Change Message"){
                message += "welcome"
            }
            CounterView1()
            CounterView2()
        }.padding()
    }
}

struct WhyStateObjectView_Previews: PreviewProvider {
    static var previews: some View {
        WhyStateObjectView()
    }
}
