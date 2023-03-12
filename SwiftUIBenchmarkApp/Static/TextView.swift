//
//  TextSwiftUIView.swift
//  BenchmarkApp
//
//  Created by Macbook Pro on 2023-02-26.
//

import SwiftUI

struct TextView: View {
    var body: some View {
            VStack(spacing: 0){
                ForEach(0..<80){ _ in
                    HStack(spacing: 0){
                        ForEach(0..<50){ c in
                            Text("\(c)")
                                .font(.system(size: 6))
                        }
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.orange)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
