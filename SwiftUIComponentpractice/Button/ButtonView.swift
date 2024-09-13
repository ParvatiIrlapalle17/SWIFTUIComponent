//
//  ButtonView.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 13/09/24.
//

import SwiftUI

struct ButtonView: View {
  @State  var title :String = "This is my title"
    var body: some View {
       
        VStack{
            
            VStack {
                Text(title)
                
                //1- first button
                Button("Button #1"){
                    self.title = "BUTTON WAS PRESSED"
                }.accentColor(.red).padding(.all,10)
                //2- second button
                Button {
                    self.title = "Second button Clicked"
                } label: {
                    Text("Button #2").foregroundColor(.white).frame(width: 300,height: 50).font(.headline).padding(.all,2)
                }.background(Color.orange).cornerRadius(10).shadow(radius: 10)
                
                
                //3- third button
                
                Button {
                    self.title = "Thid Button clicked"
                } label: {
                    Circle().fill(Color.white).frame(width: 75,height: 75).shadow(radius: 10).overlay(
                        Image(systemName: "heart.fill").font(.largeTitle).foregroundColor(.red)
                    )
                }

                //4th button
                
                
                Button {
                    self.title = "Fourth Btn Clicked"
                } label: {
                    Text("Finish".uppercased()).font(.caption).bold().frame(width: 300).foregroundColor(.gray).padding().padding(.horizontal,10)
                        .background(
                        Capsule().stroke(.gray,lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                    )
                }

//                Button {
//                    self.title = "fourth button clicked"
//                } label: {
//                  
//                   
//                    Text("Finish".uppercased()).font(.caption).bold().foregroundColor(.gray).padding().padding(.horizontal,10)
//                    background(
//                        Capsule().stroke(Color.gray,lineWidth: 10)
//                    )
//                }

                

            }
            
           
            
        }

    }
}

#Preview {
    ButtonView()
}
