//
//  Photo.swift
//  SwiftUIStudyTwo
//
//  Created by andy on 2024/7/4.
//

import Foundation

struct Photo: Identifiable {
    var id = UUID()
    var name: String
}

let samplePhotos = (1...20).map { Photo(name: "coffee-\($0)") }
