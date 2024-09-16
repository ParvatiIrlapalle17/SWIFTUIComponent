//
//  NavigationStackView.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 15/09/24.
//

import SwiftUI




struct NavigationStackView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                NavigationLink("Hello World!", destination: NewScreen())
                
                Text("Hello World!")
                Text("Hello World!")
                Text("Hello World!")
                Text("Hello World!")
            }.navigationTitle("All Inboxes").navigationBarItems(leading: NavigationLink(destination: NewScreen(), label: {
                Image(systemName: "gear")
            }).accentColor(.red), trailing: HStack{
                Image(systemName: "person.fill")
                Image(systemName: "heart.fill")
            }
            
            )
                //.navigationBarTitleDisplayMode(.inline).navigationBarHidden(true)
    }
    }
}

struct NewScreen:View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
            Color.red.edgesIgnoringSafeArea(.all)
            VStack{
               NavigationLink("3rd VC direction", destination: Text("3rd Screen"))
                
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Dismiss")
                }
            }
           

        }.navigationTitle("Second Screen").navigationBarHidden(true)
    }
}



#Preview {
    NavigationStackView()
}
