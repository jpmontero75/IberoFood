//
//  FirebaseService.swift
//  IberoFood
//
//  Created by Jose Pablo Montero on 11/11/24.
//

import Foundation
import Firebase

class FirebaseService {
    static let shared = FirebaseService()

    private init() {
        FirebaseApp.configure()
    }
}
