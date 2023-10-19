//
//  WebView.swift
//  BrowserHub
//
//  Created by Sunny Hwang on 10/18/23.
//

//
//  WebView.swift
//  MultiSearch
//
//  Created by dohankim on 2023/06/08.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    var webView: WKWebView?
    let query: String
    
    init(query: String){
        self.query = query
        self.webView = WKWebView()
    }
  
    func makeUIView(context: Context) -> WKWebView {
        
        webView?.navigationDelegate = context.coordinator
        webView?.allowsBackForwardNavigationGestures = true
        return webView!
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: URL(string: query)!)
        uiView.load(request)
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    class Coordinator: NSObject, WKNavigationDelegate {
        var parent : WebView
        init(parent: WebView){
            self.parent = parent
        }
        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            print(2432)
        }
        
       
    }
    func goBack(){
        webView?.goBack()
    }

    func goForward(){
        webView?.goForward()
    }

    func refresh() {
        webView?.reload()
    }

    func checkBack() -> Bool {
        print(123)
        return webView?.canGoBack ?? false
    }

    func checkForward() -> Bool {
        return webView?.canGoForward ?? true
    }
    
}
