//
//  PreLaunch.swift
//  LaunchScreen
//
//  Created by Stewart Lynch on 2020-08-25.
//

import SwiftUI

struct PreLaunch: View {
    @State private var showMainView = false
    @State var angle:Double = 360
        @State var opacity:Double = 1
        @State var scale: CGFloat = 1
    var body: some View {
        Group {
            if showMainView {
                ContentView()
            } else {
                ZStack {
                    Color("Background")
                        .edgesIgnoringSafeArea(.all)
                    Image("CTLogo")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .rotation3DEffect(.degrees(angle), axis: (x: 0, y: 1, z: 0))
                        .scaleEffect(scale)
                        .opacity(opacity)

                }
            }
        }
        .onAppear {
            withAnimation(.linear(duration: 2)) {
                self.angle = 0
                self.scale = 3
                self.opacity = 0
            }
            withAnimation(Animation.linear.delay(1.75)) {
                self.showMainView = true
            }
        }
    }
}

struct PreLaunch_Previews: PreviewProvider {
    static var previews: some View {
        PreLaunch()
    }
}
