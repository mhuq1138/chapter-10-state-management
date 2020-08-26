//
//  ListWithEnvironmentView.swift
//  EnvironmentObject Examples
//
//  Created by Mazharul Huq on 8/26/20.
//

import SwiftUI

struct ListWithEnvironmentView: View {
    @EnvironmentObject var personData:PersonData
    @State private var addFlag = false
    
    var body: some View {
        NavigationView{
            List{
                ForEach(personData.persons, id:\.self){person in
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
                EditView(addFlag: $addFlag)
            }
        }
    }
    
    func delete(at offsets: IndexSet) {
        personData.persons.remove(atOffsets: offsets)
    }
}

struct ListWithEnvironmentView_Previews: PreviewProvider {
    static var previews: some View {
        ListWithEnvironmentView()
            .environmentObject(PersonData())
    }
}
