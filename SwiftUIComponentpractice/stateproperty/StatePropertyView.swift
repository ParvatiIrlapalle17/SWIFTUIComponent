//
//  StatePropertyView.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 13/09/24.
//

import SwiftUI

//SwiftUI uses the @State property wrapper to allow us to modify values inside a struct, which would normally not be allowed because structs are value types.

struct StatePropertyView: View {
    @State var backgroundColor:Color = Color.purple
    @State var myTitle:String = "My Title"
    @State var count:Int = 0
    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            
            VStack(spacing:20){
                Text(myTitle).font(.title)
                Text("Count:\(count)").underline()
                HStack(spacing:20){
                    Button("Button 1") {
                        backgroundColor = .green
                        myTitle = "Button #1 Clicked"
                        count = count + 1
                    }
                    Button("Button 2") {
                        backgroundColor = .orange
                        myTitle = "Button #2 Clicked"
                        count = count + 1
                    }
                    
                }
            }
        }
    }
}

#Preview {
    StatePropertyView()
}
