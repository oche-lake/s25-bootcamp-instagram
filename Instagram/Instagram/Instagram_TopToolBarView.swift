//
//  Instagram_TopToolBarView.swift
//  Instagram
//
//  Created by Ocean Chen on 2/11/25.
//

import SwiftUI

struct Instagram_TopToolBarView: View {
    var pfp : String
    var username: String
    var body: some View {

        HStack{
            Image(pfp)
                .frame(width:30,height:30)
                .clipShape(.circle)
                .padding(.horizontal,8)
            Text(username)
                .padding(.horizontal,8)
                .font(.subheadline)
                .bold()
            Spacer()
            Image(systemName: "ellipsis").padding(.horizontal,8)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        }
}

#Preview {
    Instagram_TopToolBarView(pfp: "universe", username: "Lake")
}
