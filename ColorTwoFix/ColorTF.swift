//
//  ColorTF.swift
//  ColorTwoFix
//
//  Created by ErrorV9 on 10.06.2021.
//

import SwiftUI

struct ColorTF: View {
    
    @Binding var value: Double
    @State private var showAlert = false
    
    
    var body: some View {
        TextField("", value: $value, formatter: NumberFormatter(), onCommit: checkValue)
            .frame(width: 55, alignment: .trailing)
            .multilineTextAlignment(.trailing)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Wrong Format"),
                    message: Text("Please enter value from 0 to 255")
                )
        }
    }
}

extension ColorTF {
    private func checkValue(){
        if !(0...255).contains(value) {
            showAlert.toggle()
            value = 0
        }
    }
}

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct ColorTF_Previews: PreviewProvider {
    static var previews: some View {
        ColorTF(value: .constant(10))
    }
}
