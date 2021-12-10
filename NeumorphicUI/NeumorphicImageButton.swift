//
//  NeumorphicImageButton.swift
//  NeumorphicUI
//
//  Created by user208584 on 12/10/21.
//

import SwiftUI

struct NeumorphicImageButton: View {
    
    // MARK: - PROPERTIES
    @State private var isPressed:Bool = false
    private var size: CGSize
    private var systemName: String
    private var onTap: () -> Void
    
    init(systemName: String, size: CGSize = CGSize(width: 60, height: 60), onTap: @escaping () -> Void) {
        self.systemName = systemName
        self.size = size
        self.onTap = onTap
    }
    
    var body: some View {
        Button(action: {
            self.isPressed = true
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                self.isPressed = false
                self.onTap()
                
            }
        }) {
            //SF Symbols
            Image(systemName: self.systemName)
                .resizable()
                .frame(width: self.size.width, height: self.size.height, alignment: .center)
                .padding()
                .foregroundColor(Color.red)
                .background(Color.blue)
        }
        .clipShape(Circle())
        .shadow(color: isPressed ? Color.red : Color.white, radius: isPressed ? 4 : 8, x: 8, y: 8)
        .shadow(color: isPressed ? Color.white : Color.red, radius: isPressed ? 4 : 8, x: -8, y: -8)
        .scaleEffect(isPressed ?  0.95 : 1.0)
        .animation(.spring())
        
    
   }

}
struct NeumorphicImageButton_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphicImageButton(systemName: "heart.fill") {}
    }
}
