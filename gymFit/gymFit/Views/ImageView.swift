//
//  ImageView.swift
//  gymFit
//
//  Created by Fabio on 11/24/23.
//

import SwiftUI
import Nuke

struct ImageView: View {
    let url: URL

    var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 96, height: 96)
            case .failure:
                Image(systemName: "photo")
            @unknown default:
                EmptyView()
            }
        }
    }
}
