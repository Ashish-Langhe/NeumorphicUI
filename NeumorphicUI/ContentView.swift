//
//  ContentView.swift
//  NeumorphicUI
//
//  Created by user208584 on 12/9/21.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
 
    
    var body: some View {
        VStack {
            NeumorphicImageButton(systemName: "heart.fill") {
                //BUTTON CLICK EVENT
                print("Pressed")
            }
            .padding()
            Text("Hello World")
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.accentColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
