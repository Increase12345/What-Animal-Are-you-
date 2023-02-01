//
//  ThirdQuestion.swift
//  Who are you?
//
//  Created by Nick Pavlov on 1/31/23.
//

import SwiftUI

struct ThirdQuestion: View {
    @EnvironmentObject var summaryData: SummaryModel
    
    var body: some View {
        NavigationStack {
            ProgressView(value: summaryData.progressView, total: 100)
                .task {
                    summaryData.progressView += 25
                }
            VStack {
                HStack {
                    Text("Do you like to drive cars?")
                        .frame(maxWidth: .infinity)
                        .font(.title2)
                        .padding(.top)
                    Spacer()
                }
                Spacer()
                Text("\(Int(summaryData.slider)) %")
                Slider(value: $summaryData.slider, in: 1...100, step: 1)
                HStack {
                    Text("Hate 😡")
                    Spacer()
                    Text("😍 Loving")
                }
                .padding(.top)
                
                Spacer()
                
                NavigationLink(destination: {
                    SummaryView()
                }, label: {
                    Text("Summary")
                        .frame(width: 250, height: 50)
                        .foregroundColor(.white)
                        .background(.green)
                        .clipShape(Capsule())
                        .padding(.bottom)
                })
                
                    .navigationTitle("Question 3 of 3")
            }
            .padding(.horizontal)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct ThirdQuestion_Previews: PreviewProvider {
    static var previews: some View {
        ThirdQuestion()
            .environmentObject(SummaryModel())
    }
}
