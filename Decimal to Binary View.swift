//
//  Decimal to Binary View.swift
//  Converter
//
//  Created by Brock R. Wrede on 9/18/23.
//

import SwiftUI
import Foundation

struct BrocksView: View {
    
    @State private var number: String = ""
    @State private var decimalNumber: String = ""
    
    var body: some View {
        VStack {
            Text("Binary Converter")
            TextField("Binary Number Input", text: $number)
            Button("Convert"){
                var Number = Int(number)!
                var decimalNum = 0
                var baseVal = 1
                
                while (Number > 0){
                    let endVal = Number % 10
                    Number = Number / 10
                    decimalNum += endVal * baseVal
                    baseVal *= 2
                }
                decimalNumber = String(decimalNum)
            }
            Text(decimalNumber)
        }
        
    }
}
