//
//  SliderColor.swift
//  ColorTwoFix
//
//  Created by ErrorV9 on 10.06.2021.
//

import SwiftUI

struct SliderColor: View {
    
    @Binding var sliderValue: Double
    var color: Color
    
    var body: some View {
        HStack {
            ColorValueText(value: sliderValue)
            
            Slider(value: $sliderValue, in: 0...255)
                .accentColor(color)
            
            ColorTF(value: $sliderValue)
            
        }
    }
}

struct SliderColor_Previews: PreviewProvider {
    static var previews: some View {
        SliderColor(sliderValue: .constant(10), color: .red)
    }
}
