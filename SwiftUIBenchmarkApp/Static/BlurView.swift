//
//  BlurView.swift
//  BenchmarkApp
//
//  Created by Macbook Pro on 2023-02-27.
//

import SwiftUI

struct BlurView: View {
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
