//
//  ExtractFunctionView.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 13/09/24.
//

import SwiftUI
// Extract Some UI  code into seperate in SubView or  into function for clean code
struct ExtractFunctionView: View {
    @State var title : String = "My Title"
    @State var backgroundColor:Color = .pink
   
    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
           ButtonDesignView(backgroundColor: $backgroundColor, title: $title)
        }
    }
}

struct ButtonDesignView:View {
    func btnPressed(){
        backgroundColor = .yellow
        title = "Pressed"
    }
    @Binding var backgroundColor : Color
    @Binding var title:String
    var body: some View {
        
       
        VStack{
            Text(title)
            
            Button {
                btnPressed()
            } label: {
                Text("PRESS ME").font(.headline).foregroundColor(.white).padding().background(Color.black).cornerRadius(10)
            }

        }
    }
}
#Preview {
    ExtractFunctionView()
}
