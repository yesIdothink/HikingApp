//
//  CustomBackgroundView.swift
//  HikingApp
//
//  Created by Matthew Buerger on 6/13/24.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // Dark green background with a larger corner radius and offset
             Color("ColorGreenDark")
               .cornerRadius(40)
             .offset(y: 12)
            
            // Light green background with a smaller corner radius and offset
            Color("ColorGreenLight")
              .cornerRadius(40)
            .offset(y: 3)
             .opacity(0.05)
            
            // Linear gradient on top
            LinearGradient(
                colors: [
                    Color("ColorGreenLight"),
                    Color("ColorGreenMedium")],
                startPoint: .top,
                endPoint: .bottom)
            .cornerRadius(40)
            
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
