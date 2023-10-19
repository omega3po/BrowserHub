//
//  SearchIconButtonView.swift
//  BrowserHub
//
//  Created by Sunny Hwang on 10/11/23.
//

import SwiftUI

enum site: String {
    case google = "GoogleImage"
    case naver = "NaverImage"
    case daum = "DaumImage"
    case bing = "BingImage"
    case youtube = "YoutubeImage"
}

struct SearchIconButtonView: View {
    var image: site
    var body: some View {
        ZStack {
            Color.white
            VStack {
                switch image {
                case.google:
                    Image(image.rawValue)
                        .resizable()
                        .padding(4)
                default:
                    Image(image.rawValue)
                        .resizable()
                        
                }
            }
        }
        .frame(width: 50, height: 50)
        .cornerRadius(25)
        .padding(4)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SearchIconButtonView(image: site.google)
}
