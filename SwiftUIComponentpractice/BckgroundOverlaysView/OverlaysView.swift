//
//  OverlaysView.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 08/09/24.
//

import SwiftUI

struct OverlaysView: View {
    // we can add any view , color , gradient , shape on background
    //An overlay is a view drawing on top of another view
    var body: some View {
        VStack(alignment:.center){
            Text("BackGround").background(
                // Color.red
                //  LinearGradient(colors: [.purple,.blue], startPoint: .bottom, endPoint: .top)
                
                Circle().fill(Color.green).frame(width: 150,height: 150)
            ).frame(width: 200,height: 200).background(Circle().fill(Color.purple).frame(width: 250,height: 250))
            
            
           
            
            Circle().fill(Color.blue).frame(width: 200,height: 200).overlay(Circle().fill(Color.green).frame(width: 50,height: 50)).background(Circle().fill(Color.orange).frame(width: 300,height: 300))
        }
        Spacer()
        
        
        Image(systemName: "heart.fill").resizable().aspectRatio(contentMode: .fit).frame(width: 40,height: 40).foregroundColor(.white).background(
            
            Circle().fill(
                LinearGradient(colors: [.purple,.blue], startPoint: .bottomLeading, endPoint: .topTrailing)
            
            ).frame(width: 80,height: 80).shadow(color: Color(#colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 0.5)), radius: 10,x: 0.0,y: 10.0).overlay(
                
                Circle().fill(Color.blue).frame(width: 30,height: 30).overlay(
                    Text("5").font(.headline).foregroundColor(.white).shadow(color: Color(#colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 0.5)), radius: 10,x: 0.0,y: 10.0)
                
                    )
                ,alignment: .bottomTrailing
            
            )
        )
    
        
    }
}

#Preview {
    OverlaysView()
}
