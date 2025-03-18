//
//  PostView Upgrade.swift
//  Instagram
//
//  Created by Ocean Chen on 2/12/25.
//

import SwiftUI

struct PostView_Upgrade: View {
    var body: some View {
        Instagram_TopToolBarView(pfp: "universe", username: "Lake")
        Image("final")
            .resizable()
            .scaledToFit()
        BottomToolbarView()
        CaptionView(username: "Lake", comment: "What a cool image!")
    }
}

#Preview {
    PostView_Upgrade()
}
