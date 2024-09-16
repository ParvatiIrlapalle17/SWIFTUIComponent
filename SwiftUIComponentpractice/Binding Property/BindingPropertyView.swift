//
//  BindingPropertyView.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 13/09/24.
//

import SwiftUI

// @Binding lets us declare that one value actually comes from elsewhere, and should be shared in both places. Means value declared in parent can be shared with parent and child view

struct BindingPropertyView: View {
    @State var backgroundColor:Color = Color.green
    @State var title:String = "Title"
    var body: some View {
        
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(title).foregroundColor(.white)
                buttonView(backgroundColor: $backgroundColor, title: $title)
            }

        }
    }
}

struct buttonView:View {
    @Binding var backgroundColor:Color
    @State var buttonColor:Color = Color.blue
    @Binding var title:String
    var body: some View {
        Button {
            backgroundColor = .orange
            buttonColor = .pink
            title = "Title Changed"
        } label: {
            Text("Button").foregroundColor(.white).padding().padding(.horizontal).background(buttonColor).cornerRadius(10)
        }
    }
}



#Preview {
    BindingPropertyView()
}
