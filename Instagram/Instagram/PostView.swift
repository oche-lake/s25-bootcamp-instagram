//
//  PostView.swift
//  Instagram
//
//  Created by Ocean Chen on 2/4/25.
//

import SwiftUI

struct PostView: View {
    @State private var isLiked=false
    @State private var isSaved=false
    @State private var likeCount=0
    var body: some View {
        VStack(alignment:.leading){
            HStack(){
                Image("universe")
                    .frame(width:30,height:30)
                    .clipShape(.circle)
                    .padding(.horizontal,8)
                Text("Lake")
                    .padding(.horizontal,8)
                    .font(.subheadline)
                    .bold()
                Spacer()
                Image(systemName: "ellipsis").padding(.horizontal,8)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            Image("final")
                .resizable()
                .scaledToFit()
            HStack(){
                Button(action: {
                    isLiked.toggle()
                    likeCount += isLiked ? 1 : -1
                }) {
                    Image(systemName: isLiked ? "heart.fill" : "heart")
                        .foregroundColor(isLiked ? .red:.primary)
                }
                Image(systemName: "message")
                Image(systemName: "paperplane")
                    .foregroundColor(.primary)
                Spacer()
                Button(action: {isSaved.toggle()}){
                    Image(systemName: isSaved ? "bookmark.fill" : "bookmark")
                        .foregroundColor(.primary)
                }
            }.padding(.horizontal, 16)
            HStack{
                Text("\(likeCount) likes")
            }.frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.horizontal, 16)
            .fontWeight(.semibold)
            HStack{
                Text("Lake").bold()
                Text("Found this cool symbol from DeepSeek.").font(.caption)
            }.frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 16)
            Text("Febuary 10")
                .font(.caption)
                .foregroundColor(.secondary)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 16)
        }
}    
}
#Preview {
    PostView()
}
