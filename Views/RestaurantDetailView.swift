//
//  RestaurantDetailView.swift
//  IberoFood
//
//  Created by Jose Pablo Montero on 11/11/24.
//

import SwiftUI

struct RestaurantDetailView: View {
    var restaurant: Restaurant

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // Imagen de portada del restaurante
                ZStack(alignment: .bottomLeading) {
                    Image("Restaurant")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 250)
                        .clipped()
                    
                    // Gradiente para texto en la imagen
                    LinearGradient(
                        gradient: Gradient(colors: [.black.opacity(0.6), .clear]),
                        startPoint: .bottom,
                        endPoint: .center
                    )
                    .frame(height: 80)
                    
                    // Nombre del restaurante en la imagen
                    Text(restaurant.name)
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                        .padding([.leading, .bottom], 16)
                }
                
                // Detalles del restaurante
                VStack(alignment: .leading, spacing: 8) {
                    Text("Horario:")
                        .font(.title2)
                        .bold()
                    Text(restaurant.horario)
                        .font(.body)
                        .foregroundColor(.gray)
                    
                    Divider().padding(.vertical, 8)
                    
                    Text("Ubicación:")
                        .font(.title2)
                        .bold()
                    Text(restaurant.location)
                        .font(.body)
                        .foregroundColor(.gray)
                    
                    Divider().padding(.vertical, 8)
                    
                    Text("Menú:")
                        .font(.title2)
                        .bold()
                    VStack(alignment: .leading, spacing: 4) {
                        ForEach(restaurant.menu, id: \.self) { item in
                            Text("• \(item)")
                                .font(.body)
                                .foregroundColor(.gray)
                        }
                    }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(15)
                .shadow(color: .gray.opacity(0.2), radius: 10, x: 0, y: 5)
                .padding(.horizontal)
                
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarTitleDisplayMode(.inline)
    }
}
