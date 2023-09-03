//
//  HeadingView.swift
//  Africa
//
//  Created by Xcode on 9/3/23.
//

import SwiftUI

struct HeadingView: View {
    let systemName: String
    let text: String
    var body: some View {
        HStack {
            Image(systemName: systemName)
                .imageScale(.large)
                .foregroundStyle(Color.accentColor)
            Text(text)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

#Preview {
    HeadingView(systemName: "photo.on.rectangle.angled", text: "Wilderness in Pictures")
}
