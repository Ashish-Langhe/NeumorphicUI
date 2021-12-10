//
//  MusicPlayesView.swift
//  NeumorphicUI
//
//  Created by user208584 on 12/10/21.
//

import SwiftUI

struct MusicPlayesView: View {
    
    //MARK: - PROPERTIES
    @State private var sliderValue:Double = 0.5
    
    var body: some View {
        VStack {
            HStack {
                NeumorphicImageButton(systemName: "arrow.left", size: CGSize(width: 25, height: 25)) {}
                Spacer()
                Text("PLAYING NOW")
                    .fontWeight(.bold)
                Spacer()
                NeumorphicImageButton(systemName: "line.horizontal.3", size: CGSize(width: 25, height: 25)) {}
                
            }
            .padding()
            Spacer()
            ZStack {
                Image("music")
                    .resizable()
                    .frame(width: 300, height: 300, alignment: .center)
                    .clipShape(Circle())
                    .padding()
                    .shadow(color: Color.red, radius: 8, x: 8, y: 8)
                    .shadow(color: Color.white, radius: 8, x: -8, y: -8)
            }
            .padding()
            Spacer()
            
            Slider(value: self.$sliderValue, in: 0...1, step: 0.1)
                .shadow(color: Color.red, radius: 8, x: 8, y: 8)
                .shadow(color: Color.white, radius: 8, x: -8, y: -8)
                .padding()
            
            Spacer()
            
            HStack {
                NeumorphicImageButton(systemName: "backward.fill", size: CGSize(width: 40, height: 40)) {}
                Spacer()
                NeumorphicImageButton(systemName: "stop.fill", size: CGSize(width: 40, height: 40)) {}
                Spacer()
                NeumorphicImageButton(systemName: "forward.fill", size: CGSize(width: 40, height: 40)) {}
            }.padding()
        }.padding()
            .background(Color.accentColor)
    }
}

struct MusicPlayesView_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayesView()
    }
}
