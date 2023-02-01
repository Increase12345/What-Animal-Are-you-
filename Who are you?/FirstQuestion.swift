//
//  FirstQuestion.swift
//  Who are you?
//
//  Created by Nick Pavlov on 1/31/23.
//

import SwiftUI

struct FirstQuestion: View {
    @EnvironmentObject var summaryData: SummaryModel
    
    var body: some View {
        NavigationStack {
            ProgressView(value: summaryData.progressView, total: 100)
                .task {
                    summaryData.progressView += 25
                }
            VStack {
                HStack {
                    Text("What kind of food would you eat?")
                        .frame(maxWidth: .infinity)
                        .font(.title2)
                        .padding(.top)
                    Spacer()
                }
                .padding(.horizontal)
                
            }
            
            VStack(spacing: 20) {
                Spacer()
                
                Button(action: {
                    self.summaryData.steak.toggle()
                }, label: {
                    Text("Steak 🥩")
                })
                .frame(width: 250, height: 50)
                .background(Color(.purple).opacity(summaryData.steak ? 0.7: 0.1))
                .foregroundColor(summaryData.steak ? .white: .black)
                .clipShape(Capsule())
                .disabled(summaryData.fish || summaryData.carrot || summaryData.cucumber ? true: false)
                
                Button(action: {
                    self.summaryData.fish.toggle()
                }, label: {
                    Text("Fish 🐠")
                })
                .frame(width: 250, height: 50)
                .background(Color(.purple).opacity(summaryData.fish ? 0.7: 0.1))
                .foregroundColor(summaryData.fish ? .white: .black)
                .clipShape(Capsule())
                .disabled(summaryData.steak || summaryData.carrot || summaryData.cucumber ? true: false)
                
                Button(action: {
                    self.summaryData.carrot.toggle()
                }, label: {
                    Text("Carrot 🥕")
                })
                .frame(width: 250, height: 50)
                .background(Color(.purple).opacity(summaryData.carrot ? 0.7: 0.1))
                .foregroundColor(summaryData.carrot ? .white: .black)
                .clipShape(Capsule())
                .disabled(summaryData.steak || summaryData.fish || summaryData.cucumber ? true: false)
                
                Button(action: {
                    self.summaryData.cucumber.toggle()
                }, label: {
                    Text("Cucumber 🥒")
                })
                .frame(width: 250, height: 50)
                .background(Color(.purple).opacity(summaryData.cucumber ? 0.7: 0.1))
                .foregroundColor(summaryData.cucumber ? .white: .black)
                .clipShape(Capsule())
                .disabled(summaryData.steak || summaryData.fish || summaryData.carrot ? true: false)
                
                Spacer()
                
                
                NavigationLink(destination: {
                    SecondQuestion()
                }, label: {
                    Text("Continue")
                        .frame(width: 250, height: 50)
                        .foregroundColor(.white)
                        .background(summaryData.steak || summaryData.fish || summaryData.carrot || summaryData.cucumber ? Color.green: .gray)
                        .clipShape(Capsule())
                })
                .disabled(summaryData.steak || summaryData.fish || summaryData.carrot || summaryData.cucumber ? false: true)
                .padding(.bottom)
            }
            Spacer()
                .navigationTitle("Question 1 of 3")
                .navigationBarBackButtonHidden(true)
        }
    }
}

struct FirstQuestion_Previews: PreviewProvider {
    static var previews: some View {
        FirstQuestion()
            .environmentObject(SummaryModel())
    }
}
