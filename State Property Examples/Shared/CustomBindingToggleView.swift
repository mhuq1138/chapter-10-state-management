//
//  CustomBindingToggleView.swift
//  State Property Examples
//
//  Created by Mazharul Huq on 8/23/20.
//

import SwiftUI

struct CustomBindingToggleView: View {
    @State private var travelMode: TravelMode = .noSelection

    var body: some View {
        let byAirBinding = Binding<Bool>(
            get: {
                switch travelMode {
                case .byAir:
                    return true
                default: return false
                }
            },
            set: {value in
                travelMode = value ? .byAir : .noSelection
                }
            )
        
        let byRoadBinding = Binding<Bool>(
            get: {
                switch travelMode {
                case .byRoad:
                    return true
                default: return false
                }
            },
            set: {value in
                travelMode = value ? .byRoad : .noSelection
                }
            )
        let byTrainBinding = Binding<Bool>(
            get: {
                switch travelMode {
                case .byTrain:
                    return true
                default: return false
                }
            },
            set: {value in
                travelMode = value ? .byTrain : .noSelection
                }
            )
        return VStack{
            Text("How would you like to travel?")
            Toggle(isOn: byAirBinding) {
                Text("By Air")
            }
            Toggle(isOn: byRoadBinding) {
                Text("By Road")
            }
            Toggle(isOn: byTrainBinding) {
                Text("By train")
            }
            travelModeView()
        }
    }
    
    func travelModeView()->Text{
        
        switch travelMode{
        case .byAir:
            return Text("You have decided to travel by air.")
        case .byRoad:
            return Text("You have decided to travel by road.")
        case .byTrain:
            return Text("You have decided to travel by train.")
        default:
            return Text("You havn't chosen a travel mode")
        }
    }
}

enum TravelMode{
    case byAir
    case byRoad
    case byTrain
    case noSelection
}

struct CustomBindingToggleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBindingToggleView()
    }
}
