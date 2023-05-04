//
//  SwiftUIOptionsView.swift
//  SwiftUIBenchmarkApp
//
//  Created by Macbook Pro on 2023-03-10.
//

import SwiftUI
 

struct SwiftUIOptionsView: View {
    
    @State var presentView = false
    @State var elementsCount = ""
    @State var tag = 1
    
    
    var body: some View {
        NavigationStack {
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    VStack {
                        createTextField(text: "Enter number of elements", tag: 0)
                        
                        Group{
                            createButton(text: "Texts", buttonTag: 1)
                            createButton(text: "Buttons", buttonTag: 2)
                            createButton(text: "Images", buttonTag: 3)
                            createButton(text: "Blur", buttonTag: 4)
                            createButton(text: "CollectionView (List)", buttonTag: 5)
//                            createButton(text: "Animation: text", buttonTag: 6)
//                            createButton(text: "Animation: buttons", buttonTag: 7)
//                            createButton(text: "Animation: images", buttonTag: 8)
//                            createButton(text: "Animation: blur", buttonTag: 9)
                            createButton(text: "Typical App", buttonTag: 10)
                        }
                        
                    }
                    .frame(width: 300)
                    .navigationDestination(isPresented: $presentView) {
                        switch(tag){
                        case 1:
                            TextView(numberOfElements: Int(elementsCount) ?? 1)
                        case 2:
                            ButtonsView(numberOfElements: Int(elementsCount ) ?? 1)
                        case 3:
                            ImagesView(numberOfElements: Int(elementsCount ) ?? 1)
                        case 4:
                            BlurView(numberOfElements: Int(elementsCount ) ?? 1)
                        case 5:
                            ListView(numberOfElements: Int(elementsCount ) ?? 1)
                        case 6:
                            AnimatedTextView(numberOfElements: Int(elementsCount ) ?? 1)
                        case 7:
                            AnimatedButtonsView(numberOfElements: Int(elementsCount ) ?? 1)
                        case 8:
                            AnimatedImagesView(numberOfElements: Int(elementsCount ) ?? 1)
                        case 9:
                            AnimatedBlurredView(numberOfElements: Int(elementsCount ) ?? 1)
                        case 10: 
                            TypicalAppUIView(numberOfElements: Int(elementsCount ) ?? 1)
                        default:
                            AnimatedImagesView(numberOfElements: Int(elementsCount ) ?? 1)
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
    
    func createTextField(text: String, tag: Int) -> some View {
        
        TextField(text, text: $elementsCount) 
            .tag(tag)
            .multilineTextAlignment(.center)
            .modifier(CustomButtonModifier(backgroundColor: .white.opacity(0.2)))
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
    private func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct CustomButtonModifier: ViewModifier {
    var backgroundColor: Color = Color(.darkGray)
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
