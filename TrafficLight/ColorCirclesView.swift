//
//  ColorCirclesView.swift
//  TrafficLight
//
//  Created by Олег Лысенко on 27.10.2021.
//

import SwiftUI

struct ColorCirclesView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 120, height: 120)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct ColorCirclesView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCirclesView(color: .red, opacity: 1.0)
    }
}
