//
//  DavalebaSwiftUI4App.swift
//  DavalebaSwiftUI4
//
//  Created by Lika Nozadze on 12/13/23.
//

import SwiftUI

@main
struct DavalebaSwiftUI4App: App {
    @StateObject var viewModel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainScreenView()
                .environmentObject(viewModel)
        }
    }
}
