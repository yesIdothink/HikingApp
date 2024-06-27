//
//  CustomButtonView.swift
//  HikingApp
//
//  Created by Matthew Buerger on 6/13/24.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(LinearGradient(colors:[.white, .customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom))
                Circle()
                .stroke(LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom), lineWidth: 4)
            Image(systemName: "pawprint.fill")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(LinearGradient(colors:[ .customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom))
        }//end of zstack
        .frame(width: 58, height: 58)
    }
}

#Preview {
    CustomButtonView()
        .previewLayout(.sizeThatFits)
        .padding()
    
}
