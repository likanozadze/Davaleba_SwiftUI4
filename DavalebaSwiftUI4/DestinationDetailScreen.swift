//
//  DestinationDetailScreen.swift
//  DavalebaSwiftUI4
//
//  Created by Lika Nozadze on 12/15/23.
//

import SwiftUI

struct DestinationDetailScreen: View {
    
    var destination: Destination
    
    
    @Binding var path: NavigationPath
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Image(destination.image)
                .resizable()
                .frame(width: 360)
                .cornerRadius(10)
                .padding(.horizontal)
            
            
            Text(destination.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            HStack {
                
                NavigationLink(destination: TransportView(destination: destination, path: $path)) {
                    Text("Transport")
                        .frame(width: 80, height: 40)
                        .padding()
                        .background(Color(#colorLiteral(red: 0.4474008679, green: 0.8647196889, blue: 0.6508255005, alpha: 1)))
                        .foregroundColor(.black)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: MustSeeView(destination: destination, path: $path)) {
                    Text("Must See")
                        .frame(width: 80, height: 40)
                        .padding()
                        .background(Color(#colorLiteral(red: 0.4474008679, green: 0.8647196889, blue: 0.6508255005, alpha: 1)))
                        .foregroundColor(.black)
                        .cornerRadius(10)
                }
                
                
                NavigationLink(destination: HotelsView(destination: destination, path: $path)) {
                    Text("Hotels")
                        .frame(width: 80, height: 40)
                        .padding()
                        .background(Color(#colorLiteral(red: 0.4474008679, green: 0.8647196889, blue: 0.6508255005, alpha: 1)))
                        .foregroundColor(.black)
                        .cornerRadius(10)
                }
                
            }
            Spacer()
            
            
        }
        
        .padding(.vertical)
        .padding(.horizontal)
        .navigationTitle(destination.name)
        
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
    ), path: .constant(NavigationPath()))
}

