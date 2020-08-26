//
//  PersonData.swift
//  EnvironmentObject Examples
//
//  Created by Mazharul Huq on 8/26/20.
//

import SwiftUI

class PersonData: ObservableObject {
    @Published var persons:[Person] = []
    init(){
        persons.append(Person(name: "John Henry", address: "1 Center Road"))
        persons.append(Person(name: "Ann Richards", address: "45 South Road"))
        persons.append(Person(name: "Harold Miller", address: "135 Siverside Road"))
    }
}

struct Person:Hashable{
    var name:String
    var address:String
}

