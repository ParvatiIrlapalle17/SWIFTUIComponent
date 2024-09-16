//
//  TransitionsView.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 14/09/24.
//

import SwiftUI

struct TransitionsView: View {
    @State var showView:Bool = false
    var body: some View {
        ZStack{
            VStack{
            Button {
                showView.toggle()
            } label: {
                Text("BUTTON")
            }
                Spacer()
                
                
                RoundedRectangle(cornerRadius: 30).frame(height: UIScreen.main.bounds.height * 0.5).opacity(showView ? 1.0:0.0).transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .bottom)) )
                    .animation(.easeOut)
        }
            
           
            
           
            
            
        }.edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransitionsView()
}
