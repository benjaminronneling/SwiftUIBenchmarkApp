//
//  AnimatedButtonsView.swift
//  BenchmarkApp
//
//  Created by Macbook Pro on 2023-03-04.
//

import SwiftUI


struct AnimatedButton : View{
    let r: Int
    let c: Int
    @State var degrees: Double = 0
    @State var scale: Double = 0.5
    @State var opacity: Double = 1
    
    var body: some View{
        Button("\(c)") {
        }
        .buttonStyle(.borderedProminent)
        .rotationEffect(.degrees(degrees))
        .scaleEffect(scale)
        .opacity(opacity)
        .animation(.linear(duration: (Double(r) / 10.0)+1).delay(Double(c) / 10.0).repeatForever(autoreverses: true), value: degrees)
        .onAppear {
            degrees = -180
            scale = 1
            opacity = 0
        }
    }
}

struct AnimatedButtonsView: View {
    var body: some View {
        VStack(spacing: 2){
            ForEach(0..<15){ r in
                HStack(spacing: 2){
                    ForEach(0..<10){ c in
                        AnimatedButton(r: r, c: c)
                        
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.orange)
        
    }
    
}

struct AnimatedButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedButtonsView()
    }
}
