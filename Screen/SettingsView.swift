import SwiftUI
import AVFoundation

var player: AVAudioPlayer!

struct SettingsView: View {
    @State private var isPressed = false
    
    var body: some View {
        List {
            HStack {
                // Orange filled cat circle
                ZStack {
                    Circle()
                        .fill(Color.orange)
                        .frame(width: 60, height: 60)
                    Image(systemName: "cat.circle.fill")
                        .font(.system(size: 60, weight: .black))
                        .foregroundColor(.black)
                }
                
                VStack(spacing: -10) {
                    Text("Cats")
                        .font(.system(size: 50, weight: .black))
                    Text("Crunch's Choice")
                        .fontWeight(.medium)
                }
                
                // Gradient filled cat circle
                ZStack {
                    Circle()
                        .fill(LinearGradient(
                            gradient: Gradient(colors: [.white, .gray, .black]),
                            startPoint: .top,
                            endPoint: .bottom))
                        .frame(width: 60, height: 60)
                    Image(systemName: "cat.circle.fill")
                        .font(.system(size: 60, weight: .black))
                        .foregroundColor(.black)
                        .scaleEffect(x: -1, y: 1, anchor: .center) // This flips the image horizontally
                }
                Spacer()
            }
          
            .foregroundStyle(
                LinearGradient(colors: [
                    .orange,
                    .customGreenMedium,
                    .customGreenDark
                ], startPoint: .top, endPoint: .bottom))
            .padding(.top, 8)
            
            VStack(spacing: 8) {
                Text("Munch and Crunch love")
                    .font(.title2)
                    .fontWeight(.heavy)
                Text("Food")
                    .font(.system(size: 100))
                    .fontWeight(.heavy)
                
                // Paw print button
                Button(action: {self.playSound()}) {
                    Image(systemName: "pawprint.circle.fill")
                        .resizable()
                        .frame(width: 250, height: 250)
                        .foregroundColor(isPressed ? .gray : .black)
                      
                }
                //collett
                Text("Press for food")
            }
            .multilineTextAlignment(.center)
            .padding(.bottom, 16)
            .frame(maxWidth: .infinity)
        }
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "Food", withExtension: "mp3")
        guard url != nil else{
            return
        }
        
        do{
           
            player = try AVAudioPlayer(contentsOf: url!)
            player?.play()
        }
        catch{
            print("\(error)")
        }
    }
}

#Preview {
    SettingsView()
}
