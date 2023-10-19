//
//  FiveButtonsView.swift
//  BrowserHub
//
//  Created by Sunny Hwang on 10/18/23.
//

import SwiftUI

struct FiveButtonsView: View {
    @State var alert: Bool = false
    @AppStorage("google") var notGoogle : Bool = UserDefaults.standard.bool(forKey: "google")
    @AppStorage("youtube") var notYoutube : Bool = UserDefaults.standard.bool(forKey: "youtube")
    @AppStorage("naver") var notNaver : Bool = UserDefaults.standard.bool(forKey: "naver")
    @AppStorage("bing") var notBing : Bool = UserDefaults.standard.bool(forKey: "bing")
    @AppStorage("daum") var notDaum : Bool = UserDefaults.standard.bool(forKey: "daum")
    var body: some View {
        HStack {
            Button {
                if (!notGoogle) {
                    if (!checkIfLast()) {
                        notGoogle.toggle()
                    } else {
                        alert.toggle()
                    }
                } else {
                    notGoogle.toggle()
                }
            } label: {
                SearchIconButtonView(image: .google)
                    .opacity(notGoogle ? 0.25 : 1)
            }
            
            Button {
                if (!notYoutube) {
                    if (!checkIfLast()) {
                        notYoutube.toggle()
                    } else {
                        alert.toggle()
                    }
                } else {
                    notYoutube.toggle()
                }
            } label: {
                SearchIconButtonView(image: .youtube)
                    .opacity(notYoutube ? 0.25 : 1)
            }
            
            Button {
                if (!notNaver) {
                    if (!checkIfLast()) {
                        notNaver.toggle()
                    } else {
                        alert.toggle()
                    }
                } else {
                    notNaver.toggle()
                }
                
            } label: {
                SearchIconButtonView(image: .naver)
                    .opacity(notNaver ? 0.25 : 1)
            }
            
            Button {
                if (!notBing) {
                    if (!checkIfLast()) {
                        notBing.toggle()
                    } else {
                        alert.toggle()
                    }
                } else {
                    notBing.toggle()
                }
                
            } label: {
                SearchIconButtonView(image: .bing)
                    .opacity(notBing ? 0.25 : 1)
            }
            
            Button {
                if (!notDaum) {
                    if (!checkIfLast()) {
                        notDaum.toggle()
                    } else {
                        alert.toggle()
                    }
                } else {
                    notDaum.toggle()
                }
                
            } label: {
                SearchIconButtonView(image: .daum)
                    .opacity(notDaum ? 0.25 : 1)
            }
        }
    }
    func checkIfLast() -> Bool {
        var num: Int = 0
        if (!notGoogle) {
            num += 1
        }
        if (!notYoutube) {
            num += 1
        }
        if (!notNaver) {
            num += 1
        }
        if (!notBing) {
            num += 1
        }
        if (!notDaum) {
            num += 1
        }
        
        if (num < 2) {
            return true
        } else {
            return false
        }
    }
}

#Preview {
    FiveButtonsView()
}
