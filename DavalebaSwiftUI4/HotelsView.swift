//
//  HotelsView.swift
//  DavalebaSwiftUI4
//
//  Created by Lika Nozadze on 12/15/23.
//

import SwiftUI

struct HotelsView: View {
    
        var destination: Destination
    
        @Binding var path: NavigationPath
        var body: some View {
            
                VStack(spacing: 40) {
                   Image("hotel")
                   
                            .resizable()
                            .frame(width: 360)
                            .cornerRadius(10)
                            .padding(.horizontal)
                    List(destination.hotel, id: \.self) { hotel in
                        VStack(alignment: .leading, spacing: 10) {
                            
                            HStack {
                        
                                    
                                Text(hotel.name)
                                        .font(.headline)
                                        .foregroundColor(.primary)
                                }
                                
                                HStack {
                                    
                                    Text(hotel.description)
                                    
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                }
                            }
                        }
                    
                    Button(action: {
                        path = NavigationPath()
                       
                    }, label: {
                        
                        Text("Go to main screen")
                        
                            .frame(width: 200, height: 40)
                            .padding()
                            .background(Color(#colorLiteral(red: 0.4474008679, green: 0.8647196889, blue: 0.6508255005, alpha: 1)))
                            .foregroundColor(.black)
                            .cornerRadius(10)
                        
                        
                    })
                        
                    
                    .padding()
                }
                
            }
        }

//#Preview {
//    HotelsView()
//}
