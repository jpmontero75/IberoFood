//
//  RestaurantViewModel.swift
//  IberoFood
//
//  Created by Jose Pablo Montero on 11/11/24.
//

import Foundation
import FirebaseFirestore

class RestaurantViewModel: ObservableObject {
    @Published var restaurants: [Restaurant] = []
    @Published var searchText = ""

    private var db = Firestore.firestore()

    init() {
        fetchRestaurants()
    }

    func fetchRestaurants() {
        db.collection("restaurants").getDocuments { (snapshot, error) in
            if let error = error {
                print("Error fetching restaurants: \(error)")
                return
            }
            self.restaurants = snapshot?.documents.compactMap { document in
                try? document.data(as: Restaurant.self)
            } ?? []
        }
    }

    var filteredRestaurants: [Restaurant] {
        if searchText.isEmpty {
            return restaurants
        } else {
            return restaurants.filter { $0.name.lowercased().contains(searchText.lowercased()) }
        }
    }
}
