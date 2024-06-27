//
//  GradientButtonStyle.swift
//  HikingApp
//
//  Created by Matthew Buerger on 6/14/24.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal)
            .background(
                //conditional statement with Nil coalescing
                //condition ? A : B
                configuration.isPressed ?
                    LinearGradient(colors: [.customGrayMedium, .customGrayLight], startPoint: .top, endPoint: .bottom) :
                    LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}

