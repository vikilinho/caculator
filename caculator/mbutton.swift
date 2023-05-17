//
//  mbutton.swift
//  caculator
//
//  Created by victor on 05/05/2023.
//

import SwiftUI

struct Mbutton: View {
    var buttonText : String = "+"
   
    var width : CGFloat = 70
    var actions : (Mbutton) -> Void = {_ in } //create a variable of type  void fuction
    var color: Color = Color(hue: 1.0, saturation: 0.072, brightness: 0.089)
    var mode : calculatorModes = .notSet
    var body: some View {
        Button {
           actions(self)
        } label: {
            Text(buttonText)
                .font(.largeTitle)
                .frame(width: width, height: width, alignment: .center)
                .background(color)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 20))
        }

        
    }
   
}

struct Mbutton_Previews: PreviewProvider {
    static var previews: some View {
        Mbutton()
    }
}
