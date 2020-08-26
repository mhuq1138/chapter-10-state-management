//
//  CounterView2.swift
//  EnvironmentObject Examples
//
//  Created by Mazharul Huq on 8/26/20.
//

import SwiftUI

struct CounterView2: View {
    @EnvironmentObject var counterData:CounterData
    
    var body: some View {
        GroupBox(label: Text("Counter 2")){
            VStack(spacing:15){
                Text("Tap count: \(counterData.counter)")
                Button("Tap Me"){
                    counterData.counter += 1
                }
            }
        }
    }
}

struct CounterView2_Previews: PreviewProvider {
    static var previews: some View {
        CounterView2()
    }
}
