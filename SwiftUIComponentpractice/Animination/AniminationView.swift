//
//  AniminationView.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 14/09/24.
//

import SwiftUI

struct AniminationView: View {
    @State var isAniminated:Bool = false
    var body: some View {
        VStack{
            
            Button("Button:\(isAniminated)"){
                //default Animination
               
                withAnimation(Animation.default.repeatForever()) {
                    isAniminated.toggle()
                }
               
              //  isAniminated.toggle()
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAniminated ? 50:25).fill(isAniminated ? Color.green:Color.pink).frame(width: isAniminated ? 100:300,height:isAniminated ? 100 : 300).rotationEffect(Angle(degrees: isAniminated ? 360:0)).offset(y: isAniminated ? 300:0)
                //.animation(Animation.default.repeatForever(autoreverses: true), value: 0)
            Spacer()
        }
    }
}

#Preview {
    AniminationView()
}
