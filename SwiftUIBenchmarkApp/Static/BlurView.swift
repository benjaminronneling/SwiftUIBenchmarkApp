//
//  BlurView.swift
//  BenchmarkApp
//
//  Created by Macbook Pro on 2023-02-27.
//

import SwiftUI

struct BlurView: View {
    var body: some View {
        VStack{
            Spacer()
            VStack(spacing: 2){
                ForEach(0..<50){ r in
                    HStack(spacing: 2){
                        ForEach(0..<10){ c in
                            Rectangle()
                                .background(.ultraThinMaterial)
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

struct BlurView_Previews: PreviewProvider {
    static var previews: some View {
        BlurView()
    }
}
