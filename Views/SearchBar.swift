//
//  SearchBar.swift
//  IberoFood
//
//  Created by Jose Pablo Montero on 11/11/24.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String

    var body: some View {
        TextField("Buscar restaurante", text: $text)
            .padding(10)
            .background(Color(.systemGray5))
            .cornerRadius(8)
            .padding(.horizontal)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""))
    }
}

