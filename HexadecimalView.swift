//
//  HexadecimalView.swift
//  Converter
//
//  Created by Joshua S. Ilagan on 9/18/23.
//

import SwiftUI

struct HexadecimalView: View {
    
    
    @State var numText: String
    @State var hexResult: String
    @State var DecResult: Int
    @State var result: String

    
    var body: some View {
        
        var num = Int(numText) ?? 0
        
        
        
        VStack{
            
            TextField("Enter Number Here", text: $numText)
                .multilineTextAlignment(.center)
            
            Button(action: {
                
                hexResult = String(num, radix: 16)
                result = hexResult
            }) {
                Text("Dec to Hex")
                    .font(.title)
            }
            
            
            
            
            
            Button(action: {
                
                DecResult = Int(numText, radix: 16)!
                result = String(DecResult)
            }) {
                Text("Hex to Dec")
                    .font(.title)
            }
            
            Text("The conversion equals \(result)")
            
        }
    }
}


struct HexadecimalView_Previews: PreviewProvider {
    static var previews: some View {
        HexadecimalView(numText: "", hexResult: "", DecResult: 0, result: "")
    }
}
