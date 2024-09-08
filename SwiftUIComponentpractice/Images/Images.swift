//
//  Images.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 08/09/24.
//

import SwiftUI

struct Images: View {
    var body: some View {
        Image("screenshot").resizable().frame(width: 200,height: 200).scaledToFit()
        Image("screenshot").resizable().frame(width: 200,height: 200).aspectRatio(contentMode: .fit) // -> Aspect Ratio
            //
        
        Image("screenshot").resizable().frame(width: 200,height: 200).clipShape(
            Circle()
            // Ellipse()
        )
        Image("screenshot").resizable().frame(width: 200,height: 200).cornerRadius(50) //-> Corner radius
            
        
        
        Image("icons8-google-50").renderingMode(.template).resizable().frame(width: 200,height: 200).cornerRadius(50).foregroundColor(.purple)
        
    }
}

#Preview {
    Images()
}
