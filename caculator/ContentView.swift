//
//  ContentView.swift
//  caculator
//
//  Created by victor on 05/05/2023.
//

import SwiftUI

struct ContentView: View {
    var value:String = "2"
    var body: some View {
        ZStack {
            Color(.black)
           
            VStack {
                mtext()
                HStack {
                    mbutton(buttonText: "1")
                    mbutton(buttonText: "2")
                    mbutton(buttonText: "3")
                    mbutton(buttonText: "+", color: .blue)
                }
                HStack {
                    mbutton(buttonText: "4")
                    mbutton(buttonText: "5")
                    mbutton(buttonText: "6")
                    mbutton(buttonText: "-", color: .green)
                }
                HStack {
                    mbutton(buttonText: "7")
                    mbutton(buttonText: "8")
                    mbutton(buttonText: "9")
                    mbutton(buttonText: "x", color: .red)
                }
                HStack {
                    mbutton(buttonText: "0", width: 130)
                    mbutton(buttonText: "C", color: .gray)
                    mbutton(buttonText: "=", color: .orange)
                }
            }
           
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
