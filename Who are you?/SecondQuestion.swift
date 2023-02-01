//
//  SecondQuestion.swift
//  Who are you?
//
//  Created by Nick Pavlov on 1/31/23.
//

import SwiftUI

struct SecondQuestion: View {
    @EnvironmentObject var summaryData: SummaryModel
    
    var body: some View {
        NavigationStack {
            ProgressView(value: summaryData.progressView, total: 100)
                .task {
                    summaryData.progressView += 25
                }
            HStack{
                Text("What do you like to do?")
                    .frame(maxWidth: .infinity)
                    .font(.title2)
                    .padding(.top)
                Spacer()
            }
            Spacer()
            VStack(spacing: 30) {
                Toggle("Swim 🏊‍♂️", isOn: $summaryData.swim)
                Toggle("Sleep 💤", isOn: $summaryData.sleep)
                Toggle("Cuddle 🤗", isOn: $summaryData.cuddle)
                Toggle("Eat 🍽️", isOn: $summaryData.eat)
            }
            .padding(.horizontal, 30)
            
            
            Spacer()
            
            NavigationLink(destination: {
                ThirdQuestion()
            }, label: {
                Text("Continue")
                    .frame(width: 250, height: 50)
                    .foregroundColor(.white)
                    .background(.green)
                    .clipShape(Capsule())
                    .padding(.bottom)
            })
                .navigationTitle("Question 2 of 3")
                .navigationBarBackButtonHidden(true)
        }
    }
}

struct SecondQuestion_Previews: PreviewProvider {
    static var previews: some View {
        SecondQuestion()
            .environmentObject(SummaryModel())
    }
}
