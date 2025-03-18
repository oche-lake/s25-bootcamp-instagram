//
//  BottomToolbarView.swift
//  Instagram
//
//  Created by Ocean Chen on 2/12/25.
//

import SwiftUI

struct BottomToolbarView: View {
    @State private var isLiked=false
    @State private var isSaved=false
    @State private var likeCount=0
    var body: some View {
        VStack{
            HStack{
                Button(action: {isLiked.toggle()
                    likeCount+=isLiked ? 1:-1}){
                        Image(systemName: isLiked ? "heart.fill": "heart")
                            .foregroundColor(isLiked ?.red:.primary)
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
            Text("\(likeCount) likes")
        .frame(maxWidth: .infinity, alignment: .leading)
        .font(.footnote)
        .padding(.horizontal, 16)
        .fontWeight(.semibold)
        }
    }
}
#Preview {
    BottomToolbarView()
}
