//
//  SpacerView.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 09/09/24.
//

import SwiftUI

//SwiftUI’s Spacer views automatically fill up all available space on their axis of expansion, which is a fancy way of saying they take up as much space as they can either horizontally or vertically, depending on what you put them in.

//If you want to make a spacer of an exact size, just do the same thing you would do for any other kind of view: use a frame() modifier with the exact sizes you want.


struct SpacerView: View {
    var body: some View {
        
        HStack{
            Spacer()
            Rectangle().frame(width: 100,height: 100)
            Spacer().frame(width: 80)
            Rectangle().frame(width: 100,height: 100)
            Rectangle().frame(width: 100,height: 100)
            Spacer()
        }.background(Color.red)
    }
}

#Preview {
    SpacerView()
}
