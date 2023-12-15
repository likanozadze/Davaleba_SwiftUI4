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
        let urlString = "https://mocki.io/v1/19cef2b7-463c-468a-87b2-c8d5f2d0ddd3"
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
    
}
