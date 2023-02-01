//
//  SummaryModel.swift
//  Who are you?
//
//  Created by Nick Pavlov on 1/31/23.
//

import Foundation
import Combine

class SummaryModel: ObservableObject {
    @Published var steak = false
    @Published var fish = false
    @Published var carrot = false
    @Published var cucumber  = false
    
    @Published var swim = false
    @Published var sleep = false
    @Published var cuddle = false
    @Published var eat = false
    
    @Published var slider = 50.0
    
    @Published var progressView = 0.0
    
    @Published var personName = ""
}
