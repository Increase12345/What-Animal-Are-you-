//
//  SummaryView.swift
//  Who are you?
//
//  Created by Nick Pavlov on 1/31/23.
//

import SwiftUI

struct SummaryView: View {
    @EnvironmentObject var summaryData: SummaryModel
    
    
    var body: some View {
        NavigationStack {
            Spacer()
            HStack {
                Text("\(summaryData.personName.uppercased()), you are  -")
                    .font(.system(.largeTitle))
                    .bold()
                Text(description())
                    .font(.system(size: 70))
                    .offset(y: -15)
            }
            Text(summaryDescription())
                .multilineTextAlignment(.leading)
            Spacer()
            
            Button(action: {
                startOverButton()
               
            }, label: {
                Text("Start Over")
                    .frame(width: 250, height: 50)
                    .foregroundColor(.white)
                    .background(.red)
                    .clipShape(Capsule())
                    .padding(.bottom)
            })
            
            .navigationTitle("Summary")
            .navigationBarBackButtonHidden(true)
        }
    }
    
    func description() -> String {
        var value = ""
        if summaryData.steak == true {
            value = "🦊"
        } else if summaryData.fish == true {
            value = "🐶"
        } else if summaryData.carrot == true {
            value = "🐰"
        } else if summaryData.cucumber == true {
            value = "🐢"
        }
        return value
    }
    
    func summaryDescription() -> String {
        var value = ""
        if summaryData.steak == true {
            value = "Generally, the fox personality is associated with the following traits: focus, adaptability, intelligence, shrewdness, determination, and many more. However, they are often also referred to in negative content and are associated with being sly, tricky, and mischievous."
        } else if summaryData.fish == true {
            value = "You are kind and sociable, which makes people fun to be around. A dog person may also be more altruistic and put others' needs before their own. If you're a cat person or know someone who is, you probably know that they're a little different."
        } else if summaryData.carrot == true {
            value = "You are easygoing, polite, tender and skilled in handling relationships with people. Decent dressing is important for you, and that also helps you win popularity. You usually can leave a good impression on other people, and always have a lot of friends."
        } else if summaryData.cucumber == true {
            value = "Your strength is in wisdom.  Slow and thoughtful wins over long distances. \n\nAs a Turtle, you live in a shell of self-protection and is therefore unaware of large parts of himself and others around him. You overvalues safety - so much so, that you cut your self off from connection to others."
        }
        return value
    }
    
    func startOverButton() {
        summaryData.steak = false
        summaryData.fish = false
        summaryData.carrot = false
        summaryData.cucumber = false
        summaryData.swim = false
        summaryData.sleep = false
        summaryData.cuddle = false
        summaryData.eat = false
        summaryData.slider = 50.0
        summaryData.progressView = 0.0
        summaryData.personName = ""
    }
    
}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryView()
            .environmentObject(SummaryModel())
    }
}
