//
//  ImagesView.swift
//  BenchmarkApp
//
//  Created by Macbook Pro on 2023-02-26.
//

import SwiftUI

struct ImagesView: View {
    var body: some View {
        
        VStack(spacing: 0){
            ForEach(0..<50){ _ in
                HStack(spacing: 0){
                    ForEach(0..<40){ c in
                        Image("image\(c%10)")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 8)
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
