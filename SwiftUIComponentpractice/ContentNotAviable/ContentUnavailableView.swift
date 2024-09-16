//
//  ContentUnavailableView.swift
//  SwiftUIComponentpractice
//
//  Created by Apple on 15/09/24.
//

import SwiftUI

struct ContentUnavailableView1: View {
    var body: some View {
        ContentUnavailableView("No Internet", systemImage:  "wifi.slash", description: Text("no internet available"))
     
    }
}

#Preview {
    ContentUnavailableView1()
}
