import SwiftUI

struct ContentView: View
{
  @State private var selectedView = 0
  private let pickerOptions = ["Hexadecimal", "Binary"]
  
  var body: some View {
    VStack {
      
      Divider()
       
      Picker(selection: $selectedView, label: Text("")) {
        ForEach(0..<pickerOptions.count) {
          Text(self.pickerOptions[$0])
        } //: ForEach
      } //: Picker
      .pickerStyle(SegmentedPickerStyle())
      .padding()
      Spacer()
      
      if selectedView == 0
      {
          
          HexadecimalView(numText: "", hexResult: "", DecResult: 0, result: "")
      }
      else if selectedView == 1
      {
          Decimal_to_Binary_View()
      }
        Spacer()
    }
  }
}

