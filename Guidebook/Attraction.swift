//
//  Attraction.swift
//  Guidebook
//
//  Created by Matthew Dembinski on 1/26/24.
//

import Foundation

struct Attraction: Identifiable, Decodable {
    
    let id: UUID = UUID()
    var name: String
    var summary: String
    var longDescription: String
    var imageName: String
    var latLong: String

}
