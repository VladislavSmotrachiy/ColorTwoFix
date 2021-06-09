//
//  ContentView.swift
//  ColorTwoFix
//
//  Created by ErrorV9 on 10.06.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var red = Double.random(in: 0...255)
    @State private var green = Double.random(in: 0...255)
    @State private var blue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(.brown).ignoresSafeArea()
            VStack {
                ColorView(red: red, green: green, blue: blue)
                
                VStack(spacing: 40) {
                    SliderColor(sliderValue: $red, color: .red)
                    SliderColor(sliderValue: $green, color: .green)
                    SliderColor(sliderValue: $blue, color: .blue)
                    
                }
                Spacer()
            }
            .padding(20)
            .onTapGesture {
                UIApplication.shared.endEditing()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
