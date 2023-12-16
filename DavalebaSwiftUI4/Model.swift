//
//  Model.swift
//  DavalebaSwiftUI4
//
//  Created by Lika Nozadze on 12/13/23.
//

import Foundation

struct DestinationInformation: Codable {
    let destinations: [Destination]
    let travelTips: [String]
    
    static func travelTips() -> [String] {
            return [
                "Pack light: Avoid carrying heavy luggage around and save money on baggage fees.",
                "Carry a reusable water bottle: Save money and reduce plastic waste.",
                "Research your destination: Learn about local customs, culture, and attractions.",
                "Learn some basic phrases: Communicate with locals and show respect for their culture.",
                "Bring a power bank: Keep your phone charged while you’re on the go.",
                "Book in advance: Save money and avoid last-minute stress.",
                "Be flexible: Have a backup plan in case things don’t go as planned.",
                "Try local food: Experience the culture of your destination and discover new flavors.",
                "Stay safe: Be aware of your surroundings and take precautions to stay safe.",
                "Have fun: Remember to have fun! Traveling is an opportunity to explore new places, meet new people, and create lasting memories."
            ]
        }
}

struct Destination: Codable, Identifiable, Hashable {
    let id = UUID()
    let name: String
    let image: String
    var description: String
    var transport: [Transport]
    var mustSee: [MustSee]
    var hotel: [Hotel]
}

struct Transport: Codable, Hashable {
    var image: String
    var name: String
    var description: String
}

struct MustSee: Codable, Hashable {
    var image: String
    var name: String
    var description: String
}

struct Hotel: Codable, Hashable {
    var image: String
    var name: String
    var description: String
}


