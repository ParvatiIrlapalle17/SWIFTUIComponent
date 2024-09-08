//
//  TextSwiftUI.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 08/09/24.
//

import SwiftUI

struct TextSwiftUI: View {
    var body: some View {
        
        // font
        Text("PARVATI IRLAPALLE").font(.body)
        // font weight
        // using fontweight
        Text("SACHIN KALME").fontWeight(.semibold)
        // . Dot only
        Text("SACHIN KALME").bold()
        // underline
        Text("underline text").underline() // underline without color
        Text("underline text").underline(true,color: Color.red)// with color
        
        // strikthrough line
        Text("StrikeThrough").strikethrough() // without color
        Text("StrikeThrough").strikethrough(true,color: Color.green)
        
        // Custom Font
        Text("Custom Font").font(.system(size: 20))
        Text("Font Custon").font(.system(size: 20,weight: .black,design: .serif))
        
        //multiple line text alignment
        Text("Hello SWIFTUI , This is my practice text. I am really enjoying with learning continuosly. ").multilineTextAlignment(.leading).baselineOffset(-10).kerning(3) // baselineOffset spacing  between two line &  kerning for spacing between each letter
        
        
        // font color
        Text("Font color").foregroundColor(.red)
        
        // MinimumScaleFactor for adjusting font when text not fittig in frame
        
        Text("Hello SWIFTUI , This is my practice text. I am really enjoying with learning continuosly. ").frame(width:100,height:100).minimumScaleFactor(0.1)
        
        
        
        
    }
}

#Preview {
    TextSwiftUI()
}
