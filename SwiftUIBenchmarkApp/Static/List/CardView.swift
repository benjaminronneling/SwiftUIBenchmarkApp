//
//  CardView.swift
//  BenchmarkApp
//
//  Created by Macbook Pro on 2023-02-27.
//

import SwiftUI

struct CardView: View {
    
    var body: some View {
        List{
            HStack(spacing: 0){
                Text("8")
                    .font(.system(size: 8))
                Spacer()
            }
            .listRowSeparator(.hidden)
            .listRowInsets(EdgeInsets())
            .listRowBackground(Color.clear)
            
            HStack(spacing: 0){
                VStack(spacing: 0){
                    createImage(width: 8)
                    Spacer()
                }
                VStack(spacing: 0){
                    HStack(spacing: 0){
                        createImage()
                        createImage()
                    }
                    HStack(spacing: 0){
                        createImage()
                        createImage()
                    }
                    HStack(spacing: 0){
                        createImage()
                        createImage()
                    }
                    HStack(spacing: 0){
                        createImage()
                        createImage()
                    }
                }
                VStack(spacing: 0){
                    Spacer()
                    createImage(width: 8)
                }
            }
            .listRowSeparator(.hidden)
            .listRowInsets(EdgeInsets())
            .listRowBackground(Color.clear)
            
            HStack(spacing: 0){
                Spacer()
                Text("8")
                    .font(.system(size: 8))
            }
            .listRowSeparator(.hidden)
            .listRowInsets(EdgeInsets())
            .listRowBackground(Color.clear)
        }
        .environment(\.defaultMinListRowHeight, 10)
        .listStyle(.plain)
        .padding(5)
        .background(Color(red: 0.5, green: 0.5, blue: 0.5).opacity(0.5))
        .cornerRadius(6)
    }
    
    func createImage(width: Int = 10) -> some View {
        return Image("hearts")
            .resizable()
            .scaledToFit()
            .frame(width: CGFloat(width))
    }
}

struct CardSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
