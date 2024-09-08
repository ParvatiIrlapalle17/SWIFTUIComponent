//
//  ShapeView.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 08/09/24.
//

import SwiftUI

struct ShapeView: View {
    var body: some View {
       // pre loaded shape
        //Circle
        // 1-add color inside of circle
        Circle().fill(Color.red)
        Circle().foregroundColor(.purple)
        
        //2-outline
        Circle().fill(Color.white).stroke(Color.blue,lineWidth:5.0) //linewidth to increase size of outline
        Circle().stroke(Color.green, style: StrokeStyle(lineWidth:20,lineCap: .butt,dash: [10]))
        
        // trim
        Circle().trim(from: 0.4,to: 1.0)
        Circle().trim(from: 0.2,to: 1.0).stroke(Color.purple,lineWidth: 10)
        
        // All Shapes
       // Circle
       // Ellipse
      //  Capsule
        //rectangle
        //roundedRectangle
    }
}

#Preview {
    ShapeView()
}
