//
//  Cafe.swift
//  SwiftUIStudyTwo
//
//  Created by andy on 2024/7/4.
//

import Foundation

struct Cafe: Identifiable {
    var id = UUID()
    var image: String
    var coffeePhotos: [Photo] = []
}

let sampleCafes: [Cafe] = {
    
    var cafes = (1...18).map { Cafe(image: "cafe-\($0)") }
    
    for index in cafes.indices {
        let randomNumber = Int.random(in: (2...12))
        cafes[index].coffeePhotos = (1...randomNumber).map { Photo(name: "coffee-\($0)") }
    }
    
    return cafes
}()
