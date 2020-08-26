//
//  CounterInEnviromentView.swift
//  EnvironmentObject Examples
//
//  Created by Mazharul Huq on 8/26/20.
//

import SwiftUI

struct CounterInEnviromentView: View {
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

struct CounterInEnviromentView_Previews: PreviewProvider {
    static var previews: some View {
        CounterInEnviromentView()
            .environmentObject(CounterData())
    }
}
