//
//  AnimatedBlurredView.swift
//  BenchmarkApp
//
//  Created by Macbook Pro on 2023-03-04.
//

import SwiftUI

struct AnimatedBlur : View{
    let r: Int
    let c: Int
    @State var degrees: Double = 0
    @State var scale: Double = 0.5
    @State var opacity: Double = 1
    
    var body: some View{
        Rectangle()
        .background(.ultraThinMaterial)
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

struct AnimatedBlurredView: View {
    var numberOfElements = 1
    let maxColumns = 10
    var body: some View {
        let rows = (numberOfElements / maxColumns) + 1
        VStack{
            Spacer()
            VStack(spacing: 2){
                ForEach(0..<rows){ r in
                    HStack(spacing: 2){
                        let remainingElements = (numberOfElements - (r * maxColumns))
                        let columns = min(remainingElements, maxColumns)
                        ForEach(0..<columns) { c in
                            AnimatedBlur(r: r, c: c)

                        }
                    }
                }
            }
            .padding(20)
            .frame(width: 400, height: 600)
            Spacer()
        }
        .background{
            Image("image1")
                .resizable()
                .scaledToFill()
        }
        .ignoresSafeArea()
        
    }
}

struct AnimatedBlurredViewsView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedBlurredView()
    }
}
