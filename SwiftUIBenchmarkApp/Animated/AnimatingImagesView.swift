//
//  AlteringImagesSwiftUIViewController.swift
//  BenchmarkApp
//
//  Created by Macbook Pro on 2023-02-24.
//

import SwiftUI


struct AnimatedImage : View{
    let imageName: String
    let r: Int
    @State var degrees: Double = 0
    @State var scale: Double
    @State var opacity: Double = 1
    
    var body: some View{
        Image(imageName)
            .resizable()
            .frame(width: 64, height: 64)
            .rotationEffect(.degrees(degrees))
            .scaleEffect(scale)
            .opacity(opacity)
            .animation(.linear(duration: Double(r))
                .delay(0)
                .repeatForever(autoreverses: true), value: degrees)
            .onAppear {
                degrees = -180
                scale = 0
                opacity = 0
            }
    }
}

struct AnimatingImagesView: View {
    
    var body: some View {
        
        ZStack{
            ForEach(1..<8) { i in
                AnimatedImage(imageName: "image\(i)",r: i, scale: (10 - Double(i)) / 2.0 )
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.orange)
        
    }
}

struct AlteringImagesView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingImagesView()
    }
}


