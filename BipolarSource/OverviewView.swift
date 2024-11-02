//
//  ContentView.swift
//  BipolarSource
//
//  Created by Michael deBoisblanc on 10/30/24.
//

import SwiftUI

struct OverviewView: View {
    
    @State var isShowingTextDetails = false
    @State var detailedText = DissertationText.bipolarDisorderOverview
    
    var body: some View {
        ScrollView {
            VStack {
                BigButton(text: "The Problem") {
                    detailedText = DissertationText.statementOfTheProblem
                    isShowingTextDetails = true
                }
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                BigButton(text: "Bipolar Disorder Overview") {
                    detailedText = DissertationText.bipolarDisorderOverview
                    isShowingTextDetails = true
                }
                BigButton(text: "Circadian Rhythms") {
                    detailedText = DissertationText.circadianRhythms
                    isShowingTextDetails = true
                }
                BigButton(text: "Stigmatization") {
                    detailedText = DissertationText.stigmatization
                    isShowingTextDetails = true
                }
                BigButton(text: "The Role of Impulsivity") {
                    detailedText = DissertationText.impulsivity
                    isShowingTextDetails = true
                }
                BigButton(text: "The Range in Prognosis") {
                    detailedText = DissertationText.prognosis
                    isShowingTextDetails = true
                }
                BigButton(text: "The relapse issue") {
                    detailedText = DissertationText.theRelapseIssue
                    isShowingTextDetails = true
                }
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                BigButton(text: "Acute Depression Treatment") {
                    detailedText = DissertationText.depressionTreatment
                    isShowingTextDetails = true
                }
                BigButton(text: "Acute Mania Treatment") {
                    detailedText = DissertationText.maniaTreatment
                    isShowingTextDetails = true
                }
                BigButton(text: "Maintenance Treatment") {
                    detailedText = DissertationText.maintenanceTreatment
                    isShowingTextDetails = true
                }
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                BigButton(text: "Bibliography") {
                    detailedText = DissertationText.bibliography
                    isShowingTextDetails = true
                }
            }
            .padding()
            .sheet(isPresented: $isShowingTextDetails) {
                TextDetails(textDetails: $detailedText)
            }
        }
    }
}

struct BigButton: View {
    var text: String
    var tapped: () -> Void
    
    var body: some View {
        Button(action: tapped) {
            Text(text)
            .foregroundColor(.black)
                .padding(.all)
                .background(.yellow)
            .cornerRadius(40)
        }
    }
}


