//
//  ViewModel.swift
//  DavalebaSwiftUI4
//
//  Created by Lika Nozadze on 12/14/23.
//

import SwiftUI


class ViewModel: ObservableObject {
    
    
    @Published var destination: [Destination] = []
    @Published var error: String = "error"
    @Published var navigationPath: NavigationPath? = nil
    
    func fetchDestinations() {
        let urlString = "https://mocki.io/v1/9fbb95a0-d7f8-4326-bb8f-ca8b010b9fcb"
        guard let URL = URL(string: urlString) else { return }
        
        NetworkManager.shared.fetchDecodableData(from: URL, responseType: [Destination].self, completion: { result in
            switch result {
            case .success(let data):
                self.destination = data
                print("Fetched destinations: \(self.destination)")
            case .failure(let error):
                self.error = error.localizedDescription
                print("Error fetching destinations: \(error)")
            }
        })
    }
    
    func randomTips() -> String {
        return DestinationInformation.travelTips().randomElement() ?? ""
    }

    

let columns = [
    GridItem(.flexible()),
    GridItem(.flexible())
]
}
