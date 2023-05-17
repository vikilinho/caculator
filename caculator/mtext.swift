//
//  mtext.swift
//  caculator
//
//  Created by victor on 05/05/2023.
//

import SwiftUI

struct Mtext: View {
    var value: String = "1"
    var body: some View {
        Text(value)
                .foregroundColor(.white)
                .font(.system(size: 60))
                .fontWeight(.light)
    }
}

struct Mtext_Previews: PreviewProvider {
    static var previews: some View {
        Mtext()
            .background(.black)
    }
}
