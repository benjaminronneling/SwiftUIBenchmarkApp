//
//  SwiftUIOptionsView.swift
//  SwiftUIBenchmarkApp
//
//  Created by Macbook Pro on 2023-03-10.
//

import SwiftUI
 

struct SwiftUIOptionsView: View {
    
    @State var presentView = false
    @State var tag = 1
    
    
    var body: some View {
        NavigationStack {
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    VStack {
                        createButton(text: "Texts", buttonTag: 1)
                        createButton(text: "Buttons", buttonTag: 2)
                        createButton(text: "Images", buttonTag: 3)
                        createButton(text: "Blur", buttonTag: 4)
                        createButton(text: "List (CollectionView)", buttonTag: 5)
                        createButton(text: "Animation: text", buttonTag: 6)
                        createButton(text: "Animation: buttons", buttonTag: 7)
                        createButton(text: "Animation: images", buttonTag: 8)
                        createButton(text: "Animation: blur", buttonTag: 9)
                        createButton(text: "Animation: scroll", buttonTag: 10)
                        
                    }
                    .frame(width: 300)
                    .navigationDestination(isPresented: $presentView) {
                        switch(tag){
                        case 1:
                            TextView()
                        case 2:
                            ButtonsView()
                        case 3:
                            ImagesView()
                        case 4:
                            BlurView()
                        case 5:
                            ListView()
                        case 6:
                            AnimatedTextView()
                        case 7:
                            AnimatedButtonsView()
                        case 8:
                            AnimatingImagesView()
                        case 9:
                            AnimatedBlurredView()
                        case 10:
                            ListView()
                        default:
                            AnimatingImagesView()
                        }
                        
                    }
                    Spacer()
                }
                Spacer()
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
            .background(.orange)
        }
        
    }
    
    func createButton(text: String, buttonTag: Int) -> some View {
        Button {
            presentView = true
            tag = buttonTag
        } label: {
            HStack{
                Spacer()
                Text(text)
                Spacer()
            }
        }
        .modifier(CustomButtonModifier())
    }
}

struct CustomButtonModifier: ViewModifier {
    let backgroundColor: Color = Color(.darkGray)
    let cornerRadius: CGFloat = 10
    
    func body(content: Content) -> some View {
        content
            .padding(15)
            .background(backgroundColor)
            .foregroundColor(.white)
            .cornerRadius(cornerRadius)
    }
}



struct SwiftUIOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIOptionsView()
    }
}
