//
//  ButtonsView.swift
//  BenchmarkApp
//
//  Created by Macbook Pro on 2023-02-26.
//

import SwiftUI

struct ButtonsView: View {
    var numberOfElements = 1 
    let maxColumns = 10
    var body: some View {
        let rows = (numberOfElements / maxColumns) + 1
            VStack(spacing: 2){
                ForEach(0..<rows){ r in
                    HStack(spacing: 2){
                        let remainingElements = (numberOfElements - (r * maxColumns))
                        let columns = min(remainingElements, maxColumns)
                        ForEach(0..<columns) { c in
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
