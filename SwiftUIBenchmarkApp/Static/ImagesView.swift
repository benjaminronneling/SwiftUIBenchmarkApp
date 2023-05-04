//
//  ImagesView.swift
//  BenchmarkApp
//
//  Created by Macbook Pro on 2023-02-26.
//

import SwiftUI

struct ImagesView: View {
    var numberOfElements = 1
    let maxColumns = 20
    var body: some View {
        let rows = (numberOfElements / maxColumns) + 1
        
        VStack(spacing: 0){
            ForEach(0..<rows){ r in
                HStack(spacing: 0){
                    let remainingElements = (numberOfElements - (r * maxColumns))
                    let columns = min(remainingElements, maxColumns)
                    ForEach(0..<columns) { c in
                        Image("image\(c%10)")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 16)
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.orange)
        
    }
}

struct ImagesView_Previews: PreviewProvider {
    static var previews: some View {
        ImagesView()
    }
}
