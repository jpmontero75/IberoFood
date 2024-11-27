//
//  RestaurantListView.swift
//  IberoFood
//
//  Created by Jose Pablo Montero on 11/11/24.
//

import SwiftUI

struct RestaurantListView: View {
    @StateObject private var viewModel = RestaurantViewModel()

    var body: some View {
        ZStack {
            // Fondo en tono suave para mantener el estilo de la marca
            Color(UIColor.systemGray6)
                .edgesIgnoringSafeArea(.all)

            VStack {
                // Barra de búsqueda personalizada
                SearchBar(text: $viewModel.searchText)
                    .padding(.horizontal)

                // Lista de restaurantes estilizada
                List(viewModel.filteredRestaurants) { restaurant in
                    NavigationLink(destination: RestaurantDetailView(restaurant: restaurant)) {
                        HStack(spacing: 15) {
                            // Imagen del restaurante como marcador de posición
                            Image(systemName: "fork.knife.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.red)

                            // Información del restaurante
                            VStack(alignment: .leading) {
                                Text(restaurant.name)
                                    .font(.headline)
                                    .foregroundColor(.primary)
                                Text(restaurant.description)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding(.vertical, 8)
                    }
                }
                .listStyle(PlainListStyle())
                .background(Color.white)
                .cornerRadius(15)
                .padding()
            }
            .navigationTitle("Restaurantes")
            .font(.title3)
            .foregroundColor(.red)
        }
    }
}

struct RestaurantListView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantListView()
    }
}


