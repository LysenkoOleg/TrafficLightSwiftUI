//
//  ContentView.swift
//  TrafficLight
//
//  Created by Олег Лысенко on 27.10.2021.
//

import SwiftUI

struct ContentView: View {
    enum ColorViews {
        case redLight
        case yellowLight
        case greenLight
    }
    
    @State private var color = ColorViews.redLight
    @State private var opacityRed = 0.3
    @State private var opacityYellow = 0.3
    @State private var opacityGreen = 0.3
    @State private var nameButton = "START"
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(spacing: 20.0) {
                ColorCirclesView(color: .red, opacity: opacityRed)
                ColorCirclesView(color: .yellow, opacity: opacityYellow)
                ColorCirclesView(color: .green, opacity: opacityGreen)
                Spacer()
                Button(action: { changedColor() }) { textButton }
            }
            .padding()
        }
    }
    
    private var textButton: some View {
        Text(nameButton)
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(width: 200, height: 60)
            .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.white, lineWidth: 5))
            .background(.blue)
    }
    
    private func changedColor() {
        nameButton = "NEXT"
        switch color {
            case .redLight:
                opacityGreen = 0.3
                opacityRed = 1.0
                color =  .yellowLight
            case .yellowLight:
                opacityRed = 0.3
                opacityYellow =  1.0
                color = .greenLight
            case .greenLight:
                opacityYellow = 0.3
                opacityGreen = 1.0
                color = .redLight
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
