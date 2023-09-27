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
                
                var hexNum = num
                var hexMod = 0
                
                hexResult = ""
                
                
                while hexNum >= 16 {
                    
                    hexMod = hexNum % 16
                    
                    switch hexMod{
                        
                    case 0: hexResult = "0" + hexResult
                    case 1: hexResult = "1" + hexResult
                    case 2: hexResult = "2" + hexResult
                    case 3: hexResult = "3" + hexResult
                    case 4: hexResult = "4" + hexResult
                    case 5: hexResult = "5" + hexResult
                    case 6: hexResult = "6" + hexResult
                    case 7: hexResult = "7" + hexResult
                    case 8: hexResult = "8" + hexResult
                    case 9: hexResult = "9" + hexResult
                    case 10: hexResult = "A" + hexResult
                    case 11: hexResult = "B" + hexResult
                    case 12: hexResult = "C" + hexResult
                    case 13: hexResult = "D" + hexResult
                    case 14: hexResult = "E" + hexResult
                    case 15: hexResult = "F" + hexResult
                        
                        
                    default:
                        hexResult = "Default"
                    }
                    
                    hexNum = hexNum / 16
                }
                
                hexMod = hexNum % 16
                
                switch hexMod{
                    
                case 0: hexResult = "0" + hexResult
                case 1: hexResult = "1" + hexResult
                case 2: hexResult = "2" + hexResult
                case 3: hexResult = "3" + hexResult
                case 4: hexResult = "4" + hexResult
                case 5: hexResult = "5" + hexResult
                case 6: hexResult = "6" + hexResult
                case 7: hexResult = "7" + hexResult
                case 8: hexResult = "8" + hexResult
                case 9: hexResult = "9" + hexResult
                case 10: hexResult = "A" + hexResult
                case 11: hexResult = "B" + hexResult
                case 12: hexResult = "C" + hexResult
                case 13: hexResult = "D" + hexResult
                case 14: hexResult = "E" + hexResult
                case 15: hexResult = "F" + hexResult
                    
                    
                default:
                    hexResult = "Default"
                }
                
                hexNum = hexNum / 16
                
                result = hexResult
                
                
                
            }) {
                Text("Dec to Hex")
                    .font(.title)
            }
            
            
            
            
            
            Button(action: {
                
                var hexArray = Array(numText)
                hexArray.reverse()
                var index = 0
                var total = 0
                
                
                for _ in hexArray {
                    switch hexArray[index]{
                    case "0": total += 0
                    case "1": total += 1 * Int((pow(16.0, Double(index))))
                    case "2": total += 2 * Int((pow(16.0, Double(index))))
                    case "3": total += 3 * Int((pow(16.0, Double(index))))
                    case "4": total += 4 * Int((pow(16.0, Double(index))))
                    case "5": total += 5 * Int((pow(16.0, Double(index))))
                    case "6": total += 6 * Int((pow(16.0, Double(index))))
                    case "7": total += 7 * Int((pow(16.0, Double(index))))
                    case "8": total += 8 * Int((pow(16.0, Double(index))))
                    case "9": total += 9 * Int((pow(16.0, Double(index))))
                    case "A": total += 10 * Int((pow(16.0, Double(index))))
                    case "B": total += 11 * Int((pow(16.0, Double(index))))
                    case "C": total += 12 * Int((pow(16.0, Double(index))))
                    case "D": total += 13 * Int((pow(16.0, Double(index))))
                    case "E": total += 14 * Int((pow(16.0, Double(index))))
                    case "F": total += 15 * Int((pow(16.0, Double(index))))
                    default:
                        result = "Default"
                    }
                    index += 1
                }

                
                result = String(total)
                
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
