//
//  CaptionView.swift
//  Instagram
//
//  Created by Ocean Chen on 2/12/25.
//

import SwiftUI

struct CaptionView: View {
    var username: String
    var comment: String
    var body: some View {
        HStack{
            Text(username).bold()
            Text(comment).font(.caption)
        }.frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 16)
        Text("Febuary 12")
            .font(.caption)
            .foregroundColor(.secondary)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 16)
    }
    }

#Preview {
    CaptionView(username: "Lake", comment: "Look at what I found")
}
