//
//  TransportView.swift
//  DavalebaSwiftUI4
//
//  Created by Lika Nozadze on 12/15/23.
//

import SwiftUI

struct TransportView: View {
    var destination: Destination

 //@Binding var stackPath: NavigationPath
    
    @State private var stackPath: [String] = []
    
    var body: some View {
        NavigationStack(path: $stackPath) {
            VStack(spacing: 40) {
                
                Button("Go to main screen") {
                    
                    stackPath.append(contentsOf: [
                    ""
                    ])
                }
                
                .padding()
            }
           
            .navigationDestination(for: String.self) { value in
                Text("Another Screen: \(value)")
                
            }
        }
    }
    #Preview {
        DestinationDetailScreen(destination: Destination(
            name: "Sample Destination",
            image: "sampleImage",
            description: "Sample Description",
            transport: [Transport(image: "transportImage", name: "Transport", description: "Transport Description")],
            mustSee: [MustSee(image: "mustSeeImage", name: "Must See", description: "Must See Description")],
            hotel: [Hotel(image: "hotelImage", name: "Hotel", description: "Hotel Description")]
        ))
    }
}
