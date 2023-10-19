//
//  ContentView.swift
//  BrowserHub
//
//  Created by Sunny Hwang on 10/11/23.
//

import SwiftUI

struct ContentView: View {
    @State var input: String = ""
    var body: some View {
        ZStack {
            Color("BackgroundColor")
            VStack(spacing: 16) {
                HStack {
                    FiveButtonsView()
                }
                HStack(spacing: 0) {
                    TextField("Search...", text: $input)
                        .padding(.horizontal, 16)
                        .frame(width: 300, height: 60)
                        .background(.white)
                        .padding(.horizontal, 0)
                    
                    
                    NavigationLink {
                        SearchTabView(checkArray: [!UserDefaults.standard.bool(forKey: "google"), !UserDefaults.standard.bool(forKey: "youtube"), !UserDefaults.standard.bool(forKey: "naver"), !UserDefaults.standard.bool(forKey: "bing"), !UserDefaults.standard.bool(forKey: "daum")], input: input)
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .frame(width: 60, height: 60)
                            .background(.orange)
                            .foregroundStyle(.white)
                            .padding(.horizontal, 0)
                    }
                }
                .cornerRadius(12)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }
            .padding()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
