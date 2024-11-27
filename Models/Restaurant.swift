//
//  Restaurant.swift
//  IberoFood
//
//  Created by Jose Pablo Montero on 11/11/24.
//

import Foundation
import FirebaseFirestore

struct Restaurant: Identifiable, Codable {
    @DocumentID var id: String?
    var horario: String
    var location: String
    var menu: [String]
    var name: String
    var description: String
}
