//
//  TextDetails.swift
//  BipolarSource
//
//  Created by Michael deBoisblanc on 11/1/24.
//
import SwiftUI

struct TextDetails: View {
    
    @Binding var textDetails: String
    
    var body: some View {
        ScrollView {
            Text(textDetails)
                .padding(12)
        }
    }
}
