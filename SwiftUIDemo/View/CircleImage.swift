//
//  CircleImage.swift
//  SwiftUI-ListView
//
//  Created by Haresh on 11/01/21.
//  Copyright © 2021 Haresh. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var imageName: String
    var size: CGFloat
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: size, height: size)
            .scaleEffect()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.accentColor, lineWidth: 2.5))
            .shadow(radius: 15)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(imageName: "vinci", size: 60)
    }
}
