//
//  mbutton.swift
//  caculator
//
//  Created by victor on 05/05/2023.
//

import SwiftUI

struct mbutton: View {
    var buttonText : String = "+"
    var width : CGFloat = 70
    var color: Color = Color(hue: 1.0, saturation: 0.072, brightness: 0.089)
    var body: some View {
        Button {
            //perform action
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

struct mbutton_Previews: PreviewProvider {
    static var previews: some View {
        mbutton()
    }
}
