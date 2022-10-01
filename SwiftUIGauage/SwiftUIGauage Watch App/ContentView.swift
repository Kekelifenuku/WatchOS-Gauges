//
//  ContentView.swift
//  SwiftUIGauage Watch App
//
//  Created by keli on 30/09/2022.
//

import SwiftUI

struct ContentView: View {
    var gradient = Gradient(colors: [.pink, .pink, .purple, .orange])
    var body: some View {
        Gauge(value: 33.0, in: 0.0...100.0) {
            Text("Speed")
                .foregroundColor(Color.blue)
        } currentValueLabel: {
            Text("33")
        } minimumValueLabel: {
            Text("0/")
        } maximumValueLabel: {
            Text("100")
        }
        
        .gaugeStyle(CircularGaugeStyle(tint: gradient))
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
