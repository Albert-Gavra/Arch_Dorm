//
//  ContentView.swift
//  Arch_Dorm
//
//  Created by Albert Gavra on 07/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
                .environment(\.sizeCategory, .small)
            .navigationTitle("Dorm Details")
            List {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
            }
        }
    }
}
