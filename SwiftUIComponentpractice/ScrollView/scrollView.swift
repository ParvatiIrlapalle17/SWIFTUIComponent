//
//  scrollView.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 09/09/24.
//

import SwiftUI

    //. If you want to load content lazily – i.e., only when it scrolls into view, you should use LazyVStack and LazyHStack as appropriate.



struct scrollView: View {
    var body: some View {
        ScrollView(.vertical,showsIndicators: true){
            LazyVStack{
                ForEach(0..<50){ index in
                    ScrollView(.horizontal,showsIndicators: true){
                        HStack{
                            ForEach(0..<50){ index in
                                Rectangle().fill(Color.white).frame(width:200,height:100).cornerRadius(30).shadow(radius: 10).padding()
                            }

                        }
                        
                        
                    }
                    
                }
                
            }
            
        }
    }
}

#Preview {
    scrollView()
}
