//
//  City.swift
//  Guidebook
//
//  Created by Matthew Dembinski on 1/26/24.
//

import Foundation

struct City: Identifiable {
    
    var id: UUID = UUID()
    var name: String
    var summary: String
    var imageName: String
    
    var attractions: [Attraction]
}
