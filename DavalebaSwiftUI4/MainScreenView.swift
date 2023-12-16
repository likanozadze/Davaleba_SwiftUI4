//
//  MainScreenView.swift
//  DavalebaSwiftUI4
//
//  Created by Lika Nozadze on 12/13/23.
//


import SwiftUI

struct MainScreenView: View {
    
    @EnvironmentObject var viewModel: ViewModel
    @State var path = NavigationPath()
    @State private var showAlert = false
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack(alignment: .leading) {
                ScrollView() {
                    LazyVGrid(columns: viewModel.columns, spacing: 15) {
                        ForEach(viewModel.destination) { destination in
                            NavigationLink(value: destination) {
                                LazyVStack(alignment: .leading) {
                                    
                                    Image(destination.image)
                                        .resizable()
                                        .cornerRadius(10)
                                        .frame(maxWidth: 200, maxHeight: 140)
                                    
                                    Text(destination.name)
                                        .font(.system(size: 16, weight: .bold))
                                        .foregroundStyle(.black)
                                }
                            }
                            .navigationDestination(for: Destination.self) { destination in
                                DestinationDetailScreen(destination: destination, path: $path)
                            }
                        }
                    }
                    
                }
                
            }
            
            .padding()
            
            .navigationTitle("Travel Destinations")
            .onAppear {
                viewModel.fetchDestinations()
            }
            
        }
        Button("Travel Tips") {
            
            showAlert = true
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Travel Tips"), message: Text(viewModel.randomTips()), dismissButton: .default(Text("Got it!")))
        }
        
        .frame(width: 200, height: 40)
        .padding()
        .background(Color(#colorLiteral(red: 0.4474008679, green: 0.8647196889, blue: 0.6508255005, alpha: 1)))
        .foregroundColor(.black)
        .cornerRadius(10)
        
        
        
    }
    
}

#Preview {
    MainScreenView()
        .environmentObject(ViewModel())
}
