//
//  ColorSetter.swift
//  ObservedObject Examples (iOS)
//
//  Created by Mazharul Huq on 8/25/20.
//

import SwiftUI

class ColorSetter: ObservableObject{
    @Published var red:Double
    @Published var green:Double
    @Published var blue:Double
    
    init(red:Double, green:Double,blue:Double ){
        self.red = red
        self.green = green
        self.blue = blue
    }
}
