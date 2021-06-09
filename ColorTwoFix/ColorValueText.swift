//
//  ColorValueText.swift
//  ColorTwoFix
//
//  Created by ErrorV9 on 10.06.2021.
//

import SwiftUI

struct ColorValueText: View {
    let value: Double
    var body: some View {
        Text("\(lround(value))")
            .frame(width: 35, alignment: .leading)
            .foregroundColor(.black)
    }
}

struct ColorValueText_Previews: PreviewProvider {
    static var previews: some View {
        ColorValueText(value: 10)
    }
}
