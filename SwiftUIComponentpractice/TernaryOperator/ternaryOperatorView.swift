//
//  ternaryOperatorView.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 14/09/24.
//

import SwiftUI

struct ternaryOperatorView: View {
    @State var isStartingState:Bool = false
    var body: some View {
        VStack{
            Button(action: {
                isStartingState.toggle()
            }, label: {
                Text("Button:\(isStartingState.description)")
            })
            
            Text(isStartingState ? "Started":"Ended")
            RoundedRectangle(cornerRadius: isStartingState ? 25.0:60.0).fill(isStartingState ? Color.red:Color.yellow).frame(width: isStartingState ? 100:200,height: isStartingState ? 200:100)
Spacer()
            
        }
    }
}

#Preview {
    ternaryOperatorView()
}
