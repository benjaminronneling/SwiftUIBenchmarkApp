//
//  ButtonsView.swift
//  BenchmarkApp
//
//  Created by Macbook Pro on 2023-02-26.
//

import SwiftUI

struct ButtonsView: View {
    var body: some View {
        
            VStack(spacing: 2){
                ForEach(0..<15){ _ in
                    HStack(spacing: 2){
                        ForEach(0..<10){ c in
                            Button("\(c)") {
                            }
                            .buttonStyle(.borderedProminent)
                            
                        }
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.orange)
             
    }
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
