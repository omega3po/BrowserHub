//
//  SearchTabView.swift
//  BrowserHub
//
//  Created by Sunny Hwang on 10/11/23.
//

import SwiftUI



struct SearchTabView: View {
    var checkArray: [Bool]
    var input: String
    var body: some View {
        TabView {
            ForEach(0..<checkArray.count,id: \.self) { index in
                if (checkArray[index]) {
                    if (index == 0) {
                        WebView(url: URL(string: "www.google.com/search?q=\(input.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)")!)
                            .tag(index)
                            .tabItem {
                                Label(
                                    title: { Text("google") },
                                    icon: { Image(systemName: "G.square.fill") }
                                )
                            }
                    }
                    if (index == 1) {
                        WebView(url: URL(string: "www.youtube.com/results?search_query=\(input.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)")!)
                            .tag(index)
                            .tabItem {
                                Label(
                                    title: { Text("google") },
                                    icon: { Image(systemName: "G.square.fill") }
                                )
                            }
                    }
                    if (index == 2) {
                        WebView(url: URL(string: "https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=0&ie=utf8&query=\(input.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)")!)
                            .tag(index)
                            .tabItem {
                                Label(
                                    title: { Text("google") },
                                    icon: { Image(systemName: "G.square.fill") }
                                )
                            }
                    }
                    if (index == 3) {
                        WebView(url: URL(string: "www.bing.com/search?q=\(input.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)")!)
                            .tag(index)
                            .tabItem {
                                Label(
                                    title: { Text("google") },
                                    icon: { Image(systemName: "G.square.fill") }
                                )
                            }
                    }
                    if (index == 4) {
                        WebView(url: URL(string: "https://search.daum.net/search?w=tot&DA=YZR&t__nil_searchbox=btn&sug=&sugo=&sq=&o=&q=\(input.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)")!)
                            .tag(index)
                            .tabItem {
                                Label(
                                    title: { Text("google") },
                                    icon: { Image(systemName: "G.square.fill") }
                                )
                            }
                    }
                }
            }
        }
    }
}

#Preview {
    SearchTabView(checkArray: [false, true, true, false, true], input: "양파")
}
