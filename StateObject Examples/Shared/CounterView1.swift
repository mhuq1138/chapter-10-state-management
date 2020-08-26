//
//  CounterView1.swift
//  StateObject Examples
//
//  Created by Mazharul Huq on 8/25/20.
//

import SwiftUI

struct CounterView1: View {
    @ObservedObject var dataSource = DataSource()
    
    var body: some View {
        GroupBox(label: Text("Counter 1")){
            VStack(spacing:15){
                Text("Tap count: \(dataSource.counter)")
                Button("Tap Me"){
                    dataSource.counter += 1
                }
            }
        }
    }
}

struct CounterView1_Previews: PreviewProvider {
    static var previews: some View {
        CounterView1()
    }
}
