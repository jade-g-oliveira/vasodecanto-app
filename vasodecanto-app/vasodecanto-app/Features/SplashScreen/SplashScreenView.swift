//
//  SplashScreen.swift
//  vasodecanto-app
//
//  Created by Paulo Roberto on 22/10/25.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        ZStack {
            Color("PrimaryAppColor")
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Image("Vaso")
                        .padding(.leading, 77)
                    Image("de")
                        .padding(.trailing, 140)
                }
                Image("Canto")
                    .padding(.leading, 140)
                    .padding(.trailing, 77)
            }
        }
    }
}
struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
