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



//
//    "name": "Paris",
//    "image": "paris.jpg",
//    "description": "The city of love",
//    "transport": [
//        {
//            "image": "metro.jpg",
//            "name": "Metro",
//            "description": "The most convenient way to travel around the city"
//        },
//        {
//            "image": "bus.jpg",
//            "name": "Bus",
//            "description": "A good option for sightseeing"
//        }
//    ],
//    "mustSee": [
//        {
//            "image": "eiffel_tower.jpg",
//            "name": "Eiffel Tower",
//            "description": "The most iconic landmark of Paris"
//        },
//        {
//            "image": "louvre.jpg",
//            "name": "Louvre Museum",
//            "description": "The world's largest art museum"
//        }
//    ],
//    "hotel": [
//        {
//            "image": "ritz.jpg",
//            "name": "Ritz Paris",
//            "description": "A luxury hotel located in the heart of Paris"
//        },
//        {
//            "image": "marriott.jpg",
//            "name": "Marriott Paris Champs-Elysees Hotel",
//            "description": "A 5-star hotel with a great location"
//        }
//    ]
//
//
//{
//
//    "name": "Amsterdam",
//    "image": "amsterdam.jpg",
//    "description": "The city of canals",
//    "transport": [
//        {
//            "image": "tram.jpg",
//            "name": "Tram",
//            "description": "The most convenient way to travel around the city"
//        },
//        {
//            "image": "bike.jpg",
//            "name": "Bike",
//            "description": "A popular option for locals and tourists alike"
//        }
//    ],
//    "mustSee": [
//        {
//            "image": "rijksmuseum.jpg",
//            "name": "Rijksmuseum",
//            "description": "The Dutch national museum dedicated to arts and history"
//        },
//        {
//            "image": "van_gogh_museum.jpg",
//            "name": "Van Gogh Museum",
//            "description": "A museum dedicated to the works of Vincent van Gogh"
//        }
//    ],
//    "hotel": [
//        {
//            "image": "waldorf_astoria.jpg",
//            "name": "Waldorf Astoria Amsterdam",
//            "description": "A luxury hotel located in the heart of Amsterdam"
//        },
//        {
//            "image": "renaissance.jpg",
//            "name": "Renaissance Amsterdam Hotel",
//            "description": "A 5-star hotel with a great location"
//        }
//    ]
//
//
//{
//
//    "name": "Prague",
//    "image": "prague.jpg",
//    "description": "The city of a hundred spires",
//    "transport": [
//        {
//            "image": "tram.jpg",
//            "name": "Tram",
//            "description": "The most convenient way to travel around the city"
//        },
//        {
//            "image": "metro.jpg",
//            "name": "Metro",
//            "description": "A good option for longer distances"
//        }
//    ],
//    "mustSee": [
//        {
//            "image": "charles_bridge.jpg",
//            "name": "Charles Bridge",
//            "description": "A historic bridge that crosses the Vltava river"
//        },
//        {
//            "image": "prague_castle.jpg",
//            "name": "Prague Castle",
//            "description": "A castle complex that dates back to the 9th century"
//        }
//    ],
//    "hotel": [
//        {
//            "image": "four_seasons.jpg",
//            "name": "Four Seasons Hotel Prague",
//            "description": "A luxury hotel located in the heart of Prague"
//        },
//        {
//            "image": "hilton.jpg",
//            "name": "Hilton Prague",
//            "description": "A 5-star hotel with a great location"
//        }
//    ]
//}
