//
//  UserInfo.swift
//  ObservedObject Examples (iOS)
//
//  Created by Mazharul Huq on 8/25/20.
//

import SwiftUI

class UserInfo:ObservableObject{
    var name = "John Smith"{
        willSet{
            objectWillChange.send()
        }
    }
    
    var address = "1 Circle Road"{
        willSet{
            objectWillChange.send()
        }
    }
    
    var age = 50{
        willSet{
            objectWillChange.send()
        }
    }
}
