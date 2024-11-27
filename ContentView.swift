//
//  ContentView.swift
//  IberoFood
//
//  Created by Jose Pablo Montero on 11/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                // Fondo degradado
                LinearGradient(
                    gradient: Gradient(colors: [Color.red, Color.orange]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .edgesIgnoringSafeArea(.all)

                VStack(spacing: 40) {
                    // Título centrado
                    Text("IberoFood")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 20)
                        .shadow(radius: 10)

                    // Botón de Navegación
                    NavigationLink(destination: RestaurantListView()) {
                        Text("Explorar restaurantes")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white.opacity(0.9))
                            .foregroundColor(Color.red)
                            .cornerRadius(15)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                            .padding(.horizontal, 20)
                    }
                }
                .padding()
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    ContentView()
}

