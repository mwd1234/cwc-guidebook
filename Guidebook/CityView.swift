//
//  ContentView.swift
//  Guidebook
//
//  Created by Matthew Dembinski on 1/26/24.
//

import SwiftUI

struct CityView: View {
    
    @State var cities = [City]()
    var dataService = DataService()
    
    
    var body: some View {
        
        NavigationStack {
            
            
            ScrollView (showsIndicators: false) {
                VStack {
                    ForEach(cities) { city in
                        
                        NavigationLink {
                            AttractionView(city: city)
                        } label: {
                            CityCard(city: city)
                                .padding(.bottom, 20)
                        }
                    }
                }
                .padding(.horizontal)
                
            }
            .onAppear {
                cities = dataService.getFileData()
            }
        }
        
    }
}

#Preview {
    CityView()
}
