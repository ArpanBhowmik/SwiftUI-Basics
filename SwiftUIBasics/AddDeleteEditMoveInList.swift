//
//  AddDeleteEditMoveInList.swift
//  SwiftUIPractice
//
//  Created by m-arpan-b on 24/3/23.
//

import SwiftUI

struct AddDeleteEditMoveInList: View {
    @State var fruits: [String] = [
        "apple", "orange", "mango", "banana"
    ]
    
    @State var vegetables: [String] = [
        "tomato", "potato", "carrot"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .font(.headline)
                            .foregroundColor(.white)
                    }
                    .onDelete { indexSet in
                        delete(indexSet: indexSet)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                } header: {
                    HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                    .font(.headline)
                    .foregroundColor(.orange)
                }
                .listRowBackground(Color.pink)
                
                Section {
                    ForEach(vegetables, id: \.self) { veg in
                        Text(veg.capitalized)
                    }
                } header: {
                    Text("Veggies")
                }
            }
            .accentColor(.purple)
            .listStyle(DefaultListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
            )
        }
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(fromOffset: IndexSet, toOffset: Int) {
        fruits.move(fromOffsets: fromOffset, toOffset: toOffset)
    }
    
    func add() {
        fruits.append("Cocunut")
    }
}

struct AddDeleteEditMoveInList_Previews: PreviewProvider {
    static var previews: some View {
        AddDeleteEditMoveInList()
    }
}
