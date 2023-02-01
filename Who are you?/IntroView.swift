//
//  IntroView.swift
//  Who are you?
//
//  Created by Nick Pavlov on 2/1/23.
//

import SwiftUI

struct IntroView: View {
    @EnvironmentObject var summaryData: SummaryModel
    
    var body: some View {
        NavigationStack {
            ProgressView(value: summaryData.progressView, total: 100)
            Spacer()
            Text("What is your name?")
                .font(.title2)
            TextField("", text: $summaryData.personName)
                .textFieldStyle(.roundedBorder)
                .frame(maxWidth: 250)
                .shadow(radius: 3)
                .padding(.top)
                .multilineTextAlignment(.center)
            Spacer()
            NavigationLink(destination: {
                FirstQuestion()
            }, label: {
                Text("Continue")
                    .frame(width: 250, height: 50)
                    .foregroundColor(.white)
                    .background(.green)
                    .clipShape(Capsule())
            })
            //.disabled(true)
            .padding(.bottom)
            
                .navigationTitle("What animal are you?")
                .navigationBarBackButtonHidden(true)
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
            .environmentObject(SummaryModel())
    }
}
