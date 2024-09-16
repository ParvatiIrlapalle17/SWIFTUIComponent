//
//  DetailsAnimination.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 14/09/24.
//

import SwiftUI

struct DetailsAnimination: View {
    @State var isAniminating:Bool = false
    let timing:Double = 10.0
    var body: some View {
        VStack{
            Button("Button"){
                isAniminating.toggle()
            }
            
            
            
            
            RoundedRectangle(cornerRadius: 20).frame(width:isAniminating ? 350:50,height: 100).animation(.spring(response: 1.0,dampingFraction:0.2,blendDuration: 1.0))
            
            
//            RoundedRectangle(cornerRadius: 20).frame(width:isAniminating ? 350:50,height: 100).animation(Animation.linear(duration: timing),value: false)
//            RoundedRectangle(cornerRadius: 20).frame(width:isAniminating ? 350:50,height: 100).animation(Animation.easeIn(duration: timing),value: false)
//            RoundedRectangle(cornerRadius: 20).frame(width:isAniminating ? 350:50,height: 100).animation(Animation.easeInOut(duration: timing),value: false)
//            RoundedRectangle(cornerRadius: 20).frame(width:isAniminating ? 350:50,height: 100).animation(Animation.easeOut(duration: timing),value: false)
        }
    }
}

#Preview {
    DetailsAnimination()
}
