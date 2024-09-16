//
//  SheetsView.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 14/09/24.
//

import SwiftUI

struct SheetsView: View {
    @State var ShowSheet:Bool = false
    var body: some View {
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
            
            Button {
                ShowSheet.toggle()
            } label: {
                Text("Show Sheet").foregroundColor(.blue).font(.headline).padding(20).background(
                    Color.white.cornerRadius(10)
                )
            }.fullScreenCover(isPresented: $ShowSheet, content: {
                PopupScreen()
         }) // full screen
            
            
        
            //.sheet(isPresented: $ShowSheet, content: {
            //Do not Add conditional logic here. it will not work because with .sheet calling view is already loaded so it will not work 
             //   PopupScreen()
           // })

        }
    }
}

struct PopupScreen:View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack(alignment:.topLeading){
            Color.red.edgesIgnoringSafeArea(.all)
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark").foregroundColor(.white).font(.largeTitle).padding(20)
                
                
            }

        }
    }
}
#Preview {
    SheetsView()
}
