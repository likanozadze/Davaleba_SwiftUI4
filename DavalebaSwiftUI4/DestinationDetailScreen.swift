//
//  DestinationDetailScreen.swift
//  DavalebaSwiftUI4
//
//  Created by Lika Nozadze on 12/15/23.
//

import SwiftUI

struct DestinationDetailScreen: View {
    
    var destination: Destination

    @State private var stackPath: NavigationPath = NavigationPath()

    
    var body: some View {
        VStack(alignment: .center) {
            Image(destination.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
            
            
          Spacer()
      
        
            VStack {
                       
                NavigationLink(destination: TransportView(destination: destination)) {
                             Text("Transport")
                                 .frame(minWidth: 0, maxWidth: .infinity)
                                 .padding()
                                 .background(Color.blue)
                                 .foregroundColor(.white)
                                 .cornerRadius(10)
                         }
                         
                     
                     
                         NavigationLink(destination: MustSeeView()) {
                             Text("Must See")
                                 .frame(minWidth: 0, maxWidth: .infinity)
                                 .padding()
                                 .background(Color.blue)
                                 .foregroundColor(.white)
                                 .cornerRadius(10)
                         }
        
                
                         NavigationLink(destination: HotelsView()) {
                             Text("Hotels")
                                 .frame(minWidth: 0, maxWidth: .infinity)
                                 .padding()
                                 .background(Color.blue)
                                 .foregroundColor(.white)
                                 .cornerRadius(10)
                         }
                      
                     }
            Spacer()
                 }
        
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
    ))
}

