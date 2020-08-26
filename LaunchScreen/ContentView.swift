//
//  ContentView.swift
//  LaunchScreen
//
//  Created by Stewart Lynch on 2020-08-23.
//

import SwiftUI

struct ContentView: View {
    init() {
            //Use this if NavigationBarTitle is with Large Font
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(named: "AccentColor")!]

            //Use this if NavigationBarTitle is with displayMode = .inline
            UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(named: "AccentColor")!]
        }

    var body: some View {
        NavigationView {
            TabView {
                SingleTabView(pageTitle: "Home View",
                              imageName: "house.fill",
                              tabTitle: "Home",
                              index: 0)
                SingleTabView(pageTitle: "Shopping Cart",
                              imageName: "cart.fill",
                              tabTitle: "Shopping Cart",
                              index: 1)
                SingleTabView(pageTitle: "Activity",
                              imageName: "waveform.path.ecg",
                              tabTitle: "Activity",
                              index: 2)
            }
            .navigationTitle("Launch Screen")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button(action: {}) {
                        Image(systemName: "gear")
                            .font(.largeTitle)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}

struct SingleTabView: View {
    var pageTitle: String
    var imageName: String
    var tabTitle: String
    var index: Int
    var body: some View {

        ZStack {
            Color("Background")
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 200, height: 200)

                Text(pageTitle)
                    .font(.largeTitle)
            }
            .foregroundColor(.accentColor)
        }
        .tabItem {
            Image(systemName: imageName)
            Text(tabTitle)
        }.tag(index)
    }

}
