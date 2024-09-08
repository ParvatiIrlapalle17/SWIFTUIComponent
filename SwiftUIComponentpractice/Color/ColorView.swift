//
//  ColorView.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 08/09/24.
//

import SwiftUI
// how to use color
struct ColorView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0).fill(
           // Color.primary  -> (Simple)
          //  Color(#colorLiteral(red: 1, green: 0.1068662181, blue: 0.8179281354, alpha: 1)) -> Go to Edit -> format -> selct color -> drag color to code (Using Literal)
            
           // Color(UIColor.systemBackground) -> (UIColor)
            
         //   Color("CustomColor") -> From Assets
          //  Color(hex: 0xf5bc53, opacity: 0.8) -> From hex using Extension
            
            
        ).frame(width:200,height :200)
            //.shadow(color:.purple,radius: 5) -> Shadow
        
        
        
    }
}

#Preview {
    ColorView()
}
