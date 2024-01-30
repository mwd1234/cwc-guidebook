//
//  AttractionRow.swift
//  Guidebook
//
//  Created by Matthew Dembinski on 1/26/24.
//

import SwiftUI

struct AttractionRow: View {
    var attraction: Attraction
    
    
    var body: some View {
        VStack (alignment: .leading, spacing: 20){
            Image(attraction.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height:120)
                .cornerRadius(15)
            
            Text(attraction.name)
                .bold()
                .font(.largeTitle)
            
            Text(attraction.summary)
            
        }
    }
}

#Preview {
    AttractionRow(attraction: Attraction(
        name: "Tsukiji Outer Market",
        summary: "Tsukiji Market is a major tourist attraction for both domestic and overseas visitors in Tokyo. The area contains retail markets, restaurants, and associated restaurant supply stores.",
        longDescription: "hello",
        imageName: "tsukiji", latLong: "35.66518913611479, 139.76982702573392"))
}
