//
//  ListView.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 15/09/24.
//

import SwiftUI

// remove(atOffsets: indexSet) for delete operation
// onMove for moving rows
// List. A container that presents rows of data arranged in a single column, optionally providing the ability to select one or more members.
struct ListView: View {
    @State var fruits : [String] = ["Apple","Oranges","Banana","Peaches","Watermelon"]
    var body: some View {
        NavigationStack{
        List{
            Section("FRUITS") {
                ForEach(fruits,id: \.self){ fruit in
                    Text(fruit.capitalized)
                }.onDelete(perform: delete)
                    .onMove(perform: move).listRowBackground(Color.green)
            }
            
        }.listStyle(.grouped).navigationTitle("Grocery List").navigationBarItems(leading: EditButton(),trailing: Button(action: {
           
        }, label: {
            Text("ADD")
        }))
    }
    }
    func delete(indexSet:IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    func move(indices:IndexSet,newOffset:Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    func add(){
        fruits.append("Strawberry")
    }
}

#Preview {
    ListView()
}
