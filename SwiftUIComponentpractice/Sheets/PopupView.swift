//
//  PopupView.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 14/09/24.
//

import SwiftUI
// Create popupover using transition, sheet,offset
struct PopupView: View {
    @State var showNewScreen:Bool = false
    var body: some View {
        ZStack{
            Color.yellow.edgesIgnoringSafeArea(.all)
            VStack{
                Button {
                    showNewScreen.toggle()
                } label: {
                    Text("BUTTON").font(.largeTitle)
                }
                // Method 1: Sheet
//                .sheet(isPresented: $showNewScreen, content: {
//                    newScreen()
//                })
                
                
                
             //   Method 2: Transition
//                ZStack{
//                    if showNewScreen{
//                        newScreen(showNewScreen: $showNewScreen).transition(.move(edge: .bottom)).animation(.spring())
//                    }
//                }.zIndex(2.0)
                
                
                
                
                // Method 3: Animation offset
                newScreen(showNewScreen: $showNewScreen).padding(.top,100).offset(y: showNewScreen ?  0 : UIScreen.main.bounds.height).animation(.spring())
                Spacer()
            }
        }
    }
}

struct newScreen:View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen : Bool
    var body: some View {
        ZStack(alignment:.topLeading){
            Color.purple.edgesIgnoringSafeArea(.all)
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark").foregroundColor(.white).font(.largeTitle).padding(20)
                
                
            }
            
        }
    }
}

#Preview {
PopupView()
   //  newScreen()
    
}
