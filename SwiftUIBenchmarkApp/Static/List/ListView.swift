//
//  ListView.swift
//  BenchmarkApp
//
//  Created by Macbook Pro on 2023-02-27.
//

import SwiftUI

struct ListView: View {
    
    var numberOfElements = 1
    
    var body: some View {
            
            List{
                ForEach(0..<numberOfElements, id: \.self){ r in
                    HStack(spacing: 0){
                        DeckView()
                            .frame(width: 176, height: 240)
                        Spacer() 
                        DeckView()
                            .frame(width: 176, height: 240)
                    }
                    .id(r)
                    .listRowSeparator(.hidden)
                    .listRowInsets(EdgeInsets())
                    .padding(5)
                }
            }
            .listStyle(.plain)
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
