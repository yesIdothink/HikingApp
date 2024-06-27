//
//  CustomCircleView.swift
//  HikingApp
//
//  Created by Matthew Buerger on 6/14/24.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateGradient: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                  .fill(
                      LinearGradient(
                          colors: [.customIndigoMedium, .customSalmonLight],
                          
                          startPoint: isAnimateGradient ? .topLeading : .top,
                          
                          endPoint: isAnimateGradient ? .bottomTrailing: .topTrailing
                      )
                  )
                  .onAppear {
                      withAnimation(.easeInOut(duration: 5).repeatForever(autoreverses: true)) {
                          isAnimateGradient.toggle()
                      }
                  }
              MotionAnimationView()
                
        } //ZStack
        .frame(width: 256, height: 256)
      }
  }

#Preview {
    CustomCircleView()
}
