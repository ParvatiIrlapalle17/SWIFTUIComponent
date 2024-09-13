//
//  SafeAreaView.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 13/09/24.
//

import SwiftUI
//Safe areas help you place your views within the visible portion of the overall interface.
//edgesIgnoringSafeArea;-edgesIgnoringSafeArea(_:). Changes the view's proposed area to extend outside the screen's safe areas.
// .ignoresSafeArea() :- To extend your content into these regions, you can ignore safe areas on specific edges by applying this modifier.
struct SafeAreaView: View {
    var body: some View {
        ScrollView{
            Text("Title Goes here").font(.largeTitle).frame(maxWidth: .infinity,maxHeight: .infinity)
            
            ForEach(0..<20){ index in
                RoundedRectangle(cornerRadius: 25).fill(Color.white).frame(height:150).shadow(radius: 10).padding(20)
            }
        }
        .background(Color.red.edgesIgnoringSafeArea(.all))

    }
}

#Preview {
    SafeAreaView()
}
