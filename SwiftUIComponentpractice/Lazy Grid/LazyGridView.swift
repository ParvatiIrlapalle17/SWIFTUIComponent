//
//  LazyGridView.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 11/09/24.
//

import SwiftUI

struct LazyGridView: View {
    
    var column : [GridItem] = [
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(100), spacing: nil, alignment: nil)
    
    ]
    var rows : [GridItem] = [
        GridItem(.fixed(100), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil)
    
    ]
    
    var body: some View {
        ScrollView(.vertical){
        LazyVGrid(columns:column){
            
            Section("vertical grid") {
                ForEach(0..<20) { index in
                    
                    Rectangle().fill(Color.red).frame(height:50)
                    
                }
            }
            
        }
            ScrollView(.horizontal){
                LazyHGrid(rows:rows){
                    Section("horizontal grid") {
                        ForEach(0..<40) { index in
                            
                            Rectangle().fill(Color.red).frame(width:50)
                            
                        }
                    }
                }.padding(.leading,20)
            }.background(Color.green)
            
            
        }.background(Color.gray)
       

    }
}

#Preview {
    LazyGridView()
}
