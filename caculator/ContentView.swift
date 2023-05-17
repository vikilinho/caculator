//
//  ContentView.swift
//  caculator
//
//  Created by victor on 05/05/2023.
//

import SwiftUI
enum calculatorModes {
    case notSet
    case add
    case subtract
    case mulitiply
}

struct ContentView: View {
    @State  var currentValue = "0"
    @State  var currentmode : calculatorModes = .notSet
    @State var lastButtonWasMode = false
    @State var savedNum = 0
    @State var currentValueInt = 0
    
    var body: some View {
        ZStack {
            Color(.black)
           
            VStack {
                Mtext(value: currentValue)
                HStack {
                    Mbutton(buttonText: "1", actions: didPressNumber )
                    Mbutton(buttonText: "2", actions: didPressNumber)
                    Mbutton(buttonText: "3",  actions: didPressNumber)
                    Mbutton(buttonText: "+", actions:  didPressMode, color: .blue, mode: .add)
                }
                HStack {
                    Mbutton(buttonText: "4", actions: didPressNumber)
                    Mbutton(buttonText: "5", actions: didPressNumber)
                    Mbutton(buttonText: "6", actions: didPressNumber)
                    Mbutton(buttonText: "-", actions:  didPressMode, color: .green, mode: .subtract)
                }
                HStack {
                    Mbutton(buttonText: "7", actions: didPressNumber)
                    Mbutton(buttonText: "8", actions: didPressNumber)
                    Mbutton(buttonText: "9", actions: didPressNumber)
                    Mbutton(buttonText: "x",  actions:  didPressMode, color: .red, mode: .mulitiply)
                }
                HStack {
                    Mbutton(buttonText: "0", width: 130, actions: didPressNumber)
                    Mbutton(buttonText: "C", actions: clearValue, color: .gray)
                    Mbutton(buttonText: "=", actions: didPressEquals , color: .orange)
                }
            }
           
        }
        .ignoresSafeArea()
    }
    func didPressNumber(button: Mbutton) {
        if lastButtonWasMode {
            lastButtonWasMode = false
            currentValueInt = 0
        }
        if let parsedValue = Int("\(currentValueInt)" + button.buttonText) {
            currentValueInt = parsedValue
            updateText()
        } else {
            currentValue = "Error"
            currentValueInt = 0
        }
    }
    
    func clearValue(button: Mbutton) {
     
        currentValue = "0"
        currentmode  = .notSet
       lastButtonWasMode = false
       savedNum = 0
       currentValueInt = 0
    }
    func didPressMode(button: Mbutton) {
        currentmode = button.mode
        lastButtonWasMode = true
    }
    func didPressEquals(button: Mbutton) {
        if currentmode == .notSet || lastButtonWasMode {
            return         }
        
        if currentmode == .add {
            savedNum += currentValueInt
        } else if currentmode == .mulitiply {
            savedNum *= currentValueInt
        } else if currentmode == .subtract {
            savedNum -= currentValueInt
        }
        currentValueInt = savedNum
        updateText()
        lastButtonWasMode = true
    }
    func updateText () {
        if currentmode == .notSet {
            savedNum = currentValueInt
            print("\(savedNum)")
            print(currentValue)
        }
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        let num = NSNumber(value: currentValueInt)
        
        currentValue = numberFormatter.string(from: num) ?? "Error"
        print(currentValue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
