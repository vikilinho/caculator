//
//  mtext.swift
//  caculator
//
//  Created by victor on 05/05/2023.
//

import SwiftUI

struct mtext: View {
    var value: String = "1"
    var body: some View {
        Text(value)
                .foregroundColor(.white)
                .font(.system(size: 60))
                .fontWeight(.light)
    }
}

struct mtext_Previews: PreviewProvider {
    static var previews: some View {
        mtext()
            .background(.black)
    }
}
