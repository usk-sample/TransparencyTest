//
//  ContentView.swift
//  TransparencyTest
//
//  Created by Yusuke Hasegawa on 2023/10/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            FullScreenCoverView()
                .tabItem {
                    Label("FullScreenCover", systemImage: "globe")
                }
            NewFullScreenCoverView()
                .tabItem {
                    Label("NewFullScreenCover", systemImage: "globe")
                }
            DrawerView()
                .tabItem {
                    Label("DrawerView", systemImage: "globe")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
