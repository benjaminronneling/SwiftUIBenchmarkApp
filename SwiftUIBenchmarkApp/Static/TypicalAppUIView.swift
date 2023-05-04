//
//  TypicalAppUIView.swift
//  SwiftUIBenchmarkApp
//
//  Created by Macbook Pro on 2023-04-04.
//

import SwiftUI
struct FriendCell : View{
    let width: CGFloat = 120
    var image = "image2"
    var name = "Mark Walberg"
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color(red: 0, green: 0, blue: 0, opacity: 0.6))
                .frame(width: width, height: width * 1.33)
            VStack {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: width, height: width)
                Spacer()
                Text(name)
                    .font(.system(size: 12))
                    .foregroundColor(.white)
                    .bold()
                Spacer()
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct TypicalAppUIView: View {
    var numberOfElements = 2
    @State var textFieldText  = "What's on your mind?"
    var body: some View {
        ScrollView{
            ZStack(alignment: .top) {
                VStack{
                    Image("image1")
                        .resizable()
                        .scaledToFit()
                    Spacer()
                }
                VStack(alignment: .leading){
                    Group{
                        Image("image2")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 150, height: 150)
                        Text("James Corden")
                            .font(.system(size: 30))
                    }
                    HStack{
                        createButton(logo: "plus", text: "Add to Story", color: .blue)
                        createButton(logo: "pencil", text: "Edit profile", color: .gray)
                        createButton(logo: "ellipsis", text: "", color: .gray)
                    }
                    .buttonStyle(.borderedProminent)
                    Divider()
                    HStack{
                        createButton(logo: "", text: "Posts", color: .blue)
                            .cornerRadius(30)
                        createButton(logo: "", text: "Reels", color: .gray)
                            .cornerRadius(30)
                    }
                    .buttonStyle(.borderedProminent)
                    Divider()
                    Group{
                        Text("Details")
                            .bold()
                            .font(.system(size: 20))
                        createButton(logo: "pin", text: "From Stockholm, Sweden", color: .gray)
                        createButton(logo: "newspaper", text: "Followed by 36 people", color: .gray)
                        createButton(logo: "ellipsis", text: "See your about info", color: .gray)
                        createButton(logo: "", text: "Edit public Details", color: .blue)
                            .buttonStyle(.bordered)
                            .frame(maxWidth: .infinity)
                        Divider()
                    }
                    HStack{
                        VStack{
                            Text("Friends")
                                .bold()
                                .font(.system(size: 20))
                            Text("66 friends")
                                .font(.system(size: 14))
                        }
                        Spacer()
                        createButton(logo: "", text: "Find Friends", color: .blue)
                    }
                    VStack(spacing: 10){
                        HStack{
                            FriendCell(image: "image3", name: "Mark Walberg")
                            FriendCell(image: "image4", name: "Jason Statman")
                            FriendCell(image: "image5", name: "Jonah Hill")
                        }
                        HStack{
                            FriendCell(image: "image6", name: "Mark Walberg")
                            FriendCell(image: "image7", name: "Jason Statman")
                            FriendCell(image: "image8", name: "Jonah Hill")
                        }
                        createButton(logo: "", text: "See all friends", color: .blue)
                            .buttonStyle(.bordered)
                            .frame(maxWidth: .infinity)
                    }
                    Divider()
                    Group{
                        HStack{
                            Text("Your posts")
                                .bold()
                                .font(.system(size: 20))
                            Spacer()
                            createButton(logo: "", text: "Filters", color: .blue)
                        }
                        HStack{
                            Image("image2")
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(width: 50, height: 50)
                            TextField("What's on your mind?", text: $textFieldText)
                            createButton(logo: "photo.on.rectangle.angled", text: "", color: .green)
                        }
                        ZStack(alignment: .leading){
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.gray)
                            HStack{
                                createButton(logo: "film", text: "Reel", color: .pink)
                                    .cornerRadius(30)
                                createButton(logo: "video.and.waveform.fill", text: "Live", color: .pink)
                                    .cornerRadius(30)
                            }
                            .buttonStyle(.borderedProminent)
                            .padding(10)
                            
                        }
                        createButton(logo: "square.text.square.fill", text: "Manage Posts", color: .gray)
                            .buttonStyle(.bordered)
                            .frame(maxWidth: .infinity)
                    }
                }
                .padding(10)
                .padding(.top, 280)
            }
        } 
    }
    
    func createButton(logo: String, text: String, color: Color) -> some View {
        Button {
        } label: {
            if(logo != ""){
                Image(systemName: logo)
                    .frame(height: 25)
            }
            if(text != ""){
                Text(text)
            }
        }
        .tint(color)
    }
}

struct TypicalAppUIView_Previews: PreviewProvider {
    static var previews: some View {
        TypicalAppUIView()
    }
}
