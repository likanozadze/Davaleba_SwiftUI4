//
//  MainScreenView.swift
//  DavalebaSwiftUI4
//
//  Created by Lika Nozadze on 12/13/23.
//


import SwiftUI

struct MainScreenView: View {
    
    @EnvironmentObject var viewModel: ViewModel
    
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                ScrollView {
                    ForEach(viewModel.destination) { destination in
                        NavigationLink(destination: DestinationDetailScreen(destination: destination)) {
                            LazyVStack {
                                Text(destination.name)
                                Image(destination.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 200, height: 160)
                                
                            }
                        }
                        
                    }
                    
                }
            }
            
            .navigationTitle("Travel Destinations")
            .onAppear {
                viewModel.fetchDestinations()
            }
            
        }
    }
}



#Preview {
    MainScreenView()
        .environmentObject(ViewModel())
}
