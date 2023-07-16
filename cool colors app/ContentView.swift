//
//  ContentView.swift
//  cool colors app
//
//  Created by Libbey Kwok on 7/16/23.
//

import SwiftUI

struct ContentView: View {
    private var colorsArray: [Color] = [.mint, .pink, .purple, .teal, .gray]
    var body: some View {
        NavigationStack {
            List (colorsArray, id: \.self) {
                individualColor in
                NavigationLink(destination: individualColor) {
                    Text(individualColor.description)
                }

            }
//            .listStyle(.plain) 
            .navigationTitle("Cool Colors")
            
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
