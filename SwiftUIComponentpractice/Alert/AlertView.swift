//
//  AlertView.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 15/09/24.
//

import SwiftUI

struct AlertView: View {
    @State var isAlertShown : Bool = false
    @State var backgroundColor:Color = .yellow
    
    
    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
            Button("Alert Display") {
                isAlertShown.toggle()
            }.alert(isPresented: $isAlertShown, content: {
                //Alert with button
             getAlert()
                
               // Alert(title:Text("There was error")) Simple alert
            })
        }
    }
    
    func getAlert() -> Alert{
        return    Alert(title: Text("Project"), message: Text("Message Display"), primaryButton:.cancel(), secondaryButton: .destructive(Text("DELETE"), action: {
            // add code here for for alert button
            backgroundColor = .pink
        }))
    }
}

#Preview {
    AlertView()
}
