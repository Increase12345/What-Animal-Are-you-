//
//  ContentView.swift
//  Who are you?
//
//  Created by Nick Pavlov on 1/31/23.
//

import SwiftUI

struct MainView: View {
    @State private var scale = 1.0
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("🐶")
                        .font(.system(size: 50))
                    Spacer()
                    Text("🦊")
                        .font(.system(size: 50))
                }
              Spacer()
                VStack {
                    Spacer()
                    Spacer()
                    Text("What Animal Are You?")
                        .font(.title)
                   
                    Spacer()
                    NavigationLink(destination: {
                        IntroView()
                    }, label: {
                        Text("Start")
                            .foregroundColor(.white)
                            .font(.title3)
                            .frame(maxWidth: 150, maxHeight: 50)
                            .background(Color.green)
                            .clipShape(Capsule())
                            .bold()
                            .scaleEffect(scale)
                            .onAppear {
                                let baseAnimation = Animation.easeInOut(duration: 1)
                                let repeated = baseAnimation.repeatForever(autoreverses: true)
                                withAnimation(repeated) {
                                    scale = 0.9
                                }
                            }
                        })
                    Spacer()
                    }
                Spacer()
                
                HStack {
                    Text("🐰")
                        .font(.system(size: 50))
                    Spacer()
                    Text("🐢")
                        .font(.system(size: 50))
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .padding()
        .task {
            playSound(sound: "start", type: "mp3")
        }
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
