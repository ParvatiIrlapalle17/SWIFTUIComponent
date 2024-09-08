//
//  FrameAlignmentView.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 08/09/24.
//

import SwiftUI

struct FrameAlignmentView: View {
    var body: some View {
        Text("Parvati Irlapalle").background(Color.red).frame(width: 200,height: 200,alignment: .top).background(Color.purple)// -> Background before frame and after
        
        Text("Parvati Irlapalle").background(Color.red).frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .center).background(Color.purple) // use maxwidth and height if you want frame equal remaining space of superview
       
    }
}

#Preview {
    FrameAlignmentView()
}
