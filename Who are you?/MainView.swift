//
//  ContentView.swift
//  Who are you?
//
//  Created by Nick Pavlov on 1/31/23.
//

import SwiftUI

struct MainView: View {
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
                    Text("What Animal Are You?")
                        .font(.title)
                    
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
                    })
                    .padding(.top)
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
    }
}




struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
