//
//  DeckView.swift
//  BenchmarkApp
//
//  Created by Macbook Pro on 2023-02-27.
//

import SwiftUI

struct DeckView: View {
     
    
    var body: some View {
        
        List{
            ForEach(0..<4){ _ in
                HStack(spacing: 0){
                    Group{
                        // each row has 3 cards and the foreach runs 4 times: dechSize = 4*3 = 12
                        CardView()
                        CardView()
                        CardView()
                    }
                    .frame(width: 48, height: 70)
                    .padding(5)
                }
                .listRowSeparator(.hidden)
                .listRowInsets(EdgeInsets())
                .listRowBackground(Color.clear)
                
            }
            
        }
        .listStyle(.plain)
        .background(Color(red: 0.5, green: 0.5, blue: 0.5).opacity(0.5))
        .cornerRadius(10)
        
        
    }
}

struct DeckView_Previews: PreviewProvider {
    static var previews: some View {
        DeckView()
    }
}
