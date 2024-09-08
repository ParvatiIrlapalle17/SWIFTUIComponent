//
//  GradientView.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 08/09/24.
//

import SwiftUI

struct GradientView: View {
    var body: some View {
        //linear gradient
        RoundedRectangle(cornerRadius: 20).fill(
            //Color.red
            LinearGradient(colors: [.purple,.cyan,.orange,.yellow], startPoint: .topLeading, endPoint: .bottomTrailing)
        ).frame(width:200,height:200)
        
        
        //radio gradient
        RoundedRectangle(cornerRadius: 20).fill(
           
            RadialGradient(colors: [.purple,.cyan,.orange,.yellow], center: .bottomLeading, startRadius: 5, endRadius: 200)
        ).frame(width:200,height:200)
        
        // Angular
        RoundedRectangle(cornerRadius: 20).fill(
           
            AngularGradient(colors: [.purple,.cyan,.orange,.yellow], center: .topLeading, angle: .degrees(180))
        ).frame(width:200,height:200)
    }
}

#Preview {
    GradientView()
}
