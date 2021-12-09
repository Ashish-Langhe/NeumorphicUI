//
//  ContentView.swift
//  NeumorphicUI
//
//  Created by user208584 on 12/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            
        }) {
            //SF Symbols
            	Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 60, height: 60, alignment: .center)
                .padding(30)
                .foregroundColor(Color.red)
                .background(Color.secondary)
        }
        .clipShape(Circle())
        .shadow(color: Color.gray	, radius: 8, x: 8, y: 8)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
