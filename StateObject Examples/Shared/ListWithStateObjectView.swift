//
//  ListWithStateObjectView.swift
//  StateObject Examples
//
//  Created by Mazharul Huq on 8/26/20.
//

import SwiftUI

struct ListWithStateObjectView: View {
    @StateObject var dataStore = DataStore()
    @State private var addFlag = false
    
    var body: some View {
        NavigationView{
            List{
                ForEach(dataStore.persons, id:\.self){person in
                    VStack(alignment:.leading){
                        Text(person.name)
                            .font(.title)
                        Text(person.address)
                            .foregroundColor(.secondary)
                    }
                }.onDelete(perform: delete)
            }.navigationTitle("Persons List")
             .toolbar {
                  ToolbarItem(placement: .navigationBarLeading){
                          EditButton()
                       }
                  ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {addFlag = true}){
                        Image(systemName: "plus")
                    }
                   }
            }
            .sheet(isPresented: $addFlag){
                EditView(dataStore: dataStore, addFlag: $addFlag)
            }
        }
    }
    
    func delete(at offsets: IndexSet) {
        dataStore.persons.remove(atOffsets: offsets)
    }
}

struct ListWithStateObjectView_Previews: PreviewProvider {
    static var previews: some View {
        ListWithStateObjectView()
    }
}
