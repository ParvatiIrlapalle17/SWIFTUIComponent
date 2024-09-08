//
//  OverlaysView.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 08/09/24.
//

import SwiftUI

struct OverlaysView: View {
    var body: some View {
        Text("BackGround").background(
           // Color.red
          //  LinearGradient(colors: [.purple,.blue], startPoint: .bottom, endPoint: .top)
            
            Circle().fill(Color.green).frame(width: 150,height: 150)
        ).frame(width: 200,height: 200).background(Circle().fill(Color.purple).frame(width: 250,height: 250))
        
        
        // we can add any view , color , gradient , shape on background
        
        
        Circle().fill(Color.blue).frame(width: 200,height: 200).overlay(Circle().fill(Color.green).frame(width: 50,height: 50)).background(Circle().fill(Color.orange).frame(width: 300,height: 300))
        
    }
}

#Preview {
    OverlaysView()
}
