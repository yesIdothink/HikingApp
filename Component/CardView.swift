//
//  CardView.swift
//  HikingApp
//
//  Created by Matthew Buerger on 6/13/24.
//

import SwiftUI

struct CardView: View {
    
    //properties
    
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false
    
    func randomImage(){
        repeat{
            
            randomNumber = Int.random(in: 1...7)
        }while randomNumber == imageNumber
            imageNumber = randomNumber
        
    }
    
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
                
            VStack {
                // Header
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Cats")
                            .fontWeight(.black)
                            .font(.system(size:52))
                        .foregroundStyle(LinearGradient(colors:[.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom))
                        
                        Spacer()
                        
                        
                        Button{
                         print("Munch and Crunch")
                            isShowingSheet.toggle()
                        }label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented: $isShowingSheet){
                            SettingsView()
                        }
                        
                    }//end of text Hstack
                    
                    Text("Munch and Crunch best cats")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }//text vstack
                //Main Content
                .padding(.horizontal, 30)
                
                
                ZStack{
                 
                    CustomCircleView()
                    
                    Image("image-\(imageNumber)")
                         .resizable()
                         .scaledToFit()
                         .animation(.easeOut(duration:0.3), value: imageNumber)

                }//First Z stack
                
                //Footer
                
                Button{
                    //Action: Generate a random number
                    print("The button was pressed")
                   // isShowingSheet.toggle()
                    randomImage()
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(colors: [.customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom))
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x:1, y:2)
                    
                }
                .buttonStyle(GradientButton())
                //}
              //  .buttonStyle(.borderedProminent)
               // .tint(.indigo)
            }//Vstack
        }//Second Z stack
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
