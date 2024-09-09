//
//  PaddingView.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 09/09/24.
//

import SwiftUI
//Adds an equal padding amount to specific edges of this view.
//The .padding() modifier method applies padding or spacing around a view. Syntax: Text("This text has padding around it.") .padding(edges, amount)

struct PaddingView: View {
    var body: some View {
        Text("Hello World!. This is my world").font(.largeTitle).foregroundColor(.white).background(Color.blue).padding(.all,30).background(Color.yellow).padding(.all,5).background(Color.green)
        
        //example
        
        VStack(alignment:.leading){
            Text("Padding Defination").font(.title).fontWeight(.semibold).padding(.bottom,20)
        
        Text("he .padding() modifier method applies padding or spacing around a view. Syntax: Text(This text has padding around it.) .padding(edges, amount)")
        }.padding().padding(.vertical,10).background(
        Color.white.cornerRadius(10).shadow(color:Color.purple.opacity(0.3),radius: 10,x: 0.0,y: 10.0)
    ).padding(.horizontal,10)
    }
}

#Preview {
    PaddingView()
}
