//
//  Trip.swift
//  SwiftUITinderTrip
//
//  Created by Simon Ng on 17/7/2023.
//

import Foundation

struct Trip: Identifiable {
    var id = UUID()
    var destination: String
    var image: String
}

#if DEBUG
var trips = [ Trip(destination: "Yosemite, USA", image: "yosemite-usa"),
              Trip(destination: "Venice, Italy", image: "venice-italy"),
              Trip(destination: "Hong Kong", image: "hong-kong"),
              Trip(destination: "Barcelona, Spain", image: "barcelona-spain"),
              Trip(destination: "Braies, Italy", image: "braies-italy"),
              Trip(destination: "Kanangra, Australia", image: "kanangra-australia"),
              Trip(destination: "Mount Currie, Canada", image: "mount-currie-canada"),
              Trip(destination: "Ohrid, Macedonia", image: "ohrid-macedonia"),
              Trip(destination: "Oia, Greece", image: "oia-greece"),
              Trip(destination: "Palawan, Philippines", image: "palawan-philippines"),
              Trip(destination: "Salerno, Italy", image: "salerno-italy"),
              Trip(destination: "Tokyo, Japan", image: "tokyo-japan"),
              Trip(destination: "West Vancouver, Canada", image: "west-vancouver-canada"),
              Trip(destination: "Singapore", image: "garden-by-bay-singapore"),
              Trip(destination: "Perhentian Islands, Malaysia", image: "perhentian-islands-malaysia")
            ]


let sampleTrips = [ Trip(destination: "Paris", image: "paris"),
                    Trip(destination: "Florence", image: "florence"),
                    Trip(destination: "Amsterdam", image: "amsterdam"),
                    Trip(destination: "Ghent", image: "ghent"),
                    Trip(destination: "Santorini", image: "santorini"),
                    Trip(destination: "Budapest", image: "budapest"),
                    Trip(destination: "London", image: "london"),
                    Trip(destination: "Cuba", image: "cuba"),
                    Trip(destination: "Osaka", image: "osaka"),
                    Trip(destination: "Kyoto", image: "kyoto"),
                    Trip(destination: "Seoul", image: "seoul"),
                    Trip(destination: "Sydney", image: "sydney"),
                    Trip(destination: "Hong Kong", image: "hongkong")
                ]

#endif

