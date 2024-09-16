//
//  ConditionalStatementView.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 14/09/24.
//

import SwiftUI

struct ConditionalStatementView: View {
    @State var ShowCircle : Bool = false
    @State var ShowRectangle:Bool = false
    @State var isLoading :Bool = false
    var body: some View {
        VStack{
            
            Button {
                isLoading.toggle()
            } label: {
                Text("IS LOADING:  \(isLoading.description)")
            }
            if isLoading{
                ProgressView()
            }else{
               
            }

          //  showCircleView(ShowCircle: $ShowCircle, ShowRectangle: $ShowRectangle)
        }
    }
}

struct showCircleView:View {
    @Binding var ShowCircle:Bool
    @Binding var ShowRectangle:Bool
    var body: some View {
        VStack{
            Button {
                ShowCircle.toggle()
            } label: {
                Text("Circle Button:\(ShowCircle.description)")
                
            }
            
            Button {
                ShowRectangle.toggle()
            } label: {
                Text("Rectangle:\(ShowRectangle.description)")
            }

            
            
            if ShowCircle {
                Circle().frame(width: 100,height: 100)
               
            }
            if ShowRectangle{
                Rectangle().frame(width: 100,height: 100)
            }
            if ShowCircle && ShowRectangle{
                RoundedRectangle(cornerRadius: 25).frame(width: 200,height: 200)
            }
            if ShowCircle || ShowRectangle{
                RoundedRectangle(cornerRadius: 25).frame(width: 200,height: 200)
            }
           
        }
    }
}
#Preview {
    ConditionalStatementView()
}
