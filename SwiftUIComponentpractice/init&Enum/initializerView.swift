//
//  initializerView.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 13/09/24.
//

import SwiftUI

struct initializerView: View {
    let backgroundColor:Color
    let count:Int
    var title:String
    //default init
    init(count:Int,fruit: fruits) {
     //   self.backgroundColor = backgroundColor
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        }else {
            self.title = "oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum fruits{
        case apple
        case orange
    }
    
    
    var body: some View {
        VStack{
            Text("\(count)").font(.largeTitle).foregroundColor(.white).underline()
            
            Text("\(title)").font(.headline).foregroundColor(.white)
        }.frame(width: 150,height: 150).background(backgroundColor).cornerRadius(10)
    }
}

#Preview {
    HStack{
        initializerView(count: 24, fruit: .orange)
        initializerView(count: 100, fruit: .apple)
    }
}
