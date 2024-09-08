//
//  SystemiconsView.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 08/09/24.
//

import SwiftUI

struct SystemiconsView: View {
    var body: some View {
        Image(systemName: "heart.fill").resizable()
        .scaledToFit().frame(width:100,height: 100)
        Image(systemName: "heart.fill").aspectRatio(contentMode: .fit).frame(width:100,height: 100)
        
        
        Image(systemName: "heart.fill").foregroundColor(Color.purple) //-> image color
            
        Image(systemName: "heart.fill").font(.system(size: 100))
        Image(systemName: "heart.fill").font(.largeTitle) //-> Size of icon
    }
}

#Preview {
    SystemiconsView()
}
