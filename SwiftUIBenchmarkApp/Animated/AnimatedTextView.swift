//
//  AnimatedTextView.swift
//  BenchmarkApp
//
//  Created by Macbook Pro on 2023-03-04.
//

import SwiftUI

struct AnimatedText : View{
    let r: Int
    let c: Int
    @State var degrees: Double = 0
    @State var scale: Double = 1.5
    @State var opacity: Double = 1
    
    var body: some View{
        Text("\(c)")
            .font(.system(size: 8))
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

struct AnimatedTextView: View {
    var numberOfElements = 200
    let maxColumns = 20
    var body: some View {
        let rows = (numberOfElements / maxColumns) + 1
        VStack(spacing: 5){
            ForEach(0..<rows){ r in
                HStack(spacing: 5){
                    let remainingElements = (numberOfElements - (r * maxColumns))
                    let columns = min(remainingElements, maxColumns)
                    ForEach(0..<columns) { c in
                        AnimatedText(r: r, c: c)
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.orange)
        
    }
}

struct AnimatedTextView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedTextView()
    }
}
