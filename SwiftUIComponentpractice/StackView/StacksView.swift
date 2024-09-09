//
//  StacksView.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 09/09/24.
//

import SwiftUI


//VStack, a vertical stack, which shows views in a top-to-bottom list
//HStack, a horizontal stack, which shows views in a left-to-right list
//ZStack, a depth-based stack, which shows views in a back-to-front list
//with alignment we can change position of view inside stack

// with spacing we can add space between two component of stack 
struct StacksView: View {
    var body: some View {
        Text("ZStack")
        ZStack{
           
            Rectangle().frame(width: 100,height: 100).foregroundColor(.blue)
            Rectangle().frame(width: 50,height: 50).foregroundColor(.purple)
            Rectangle().frame(width: 25,height: 25).foregroundColor(.orange)
        }
        Spacer()
        VStack{
            Text("VStack")
                            Rectangle().frame(width: 100,height: 100).foregroundColor(.blue)
                            Rectangle().frame(width: 100,height: 100).foregroundColor(.purple)
                            Rectangle().frame(width: 100,height: 100).foregroundColor(.orange)
        }
        Spacer()
        HStack{
            Text("HStack")
            Rectangle().frame(width: 100,height: 100).foregroundColor(.blue)
            Rectangle().frame(width: 100,height: 100).foregroundColor(.purple)
            Rectangle().frame(width: 100,height: 100).foregroundColor(.orange)
        }
        
    }
}

#Preview {
    StacksView()
}
