//
//  ProductoFila.swift
//  OnlineShop-App
//
//  Created by Arkaitz Lopez on 5/2/24.
//

import SwiftUI
//https://fakestoreapi.com/products
struct ProductoFila: View {
    var producto: Producto
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: producto.imagen))
            Text(producto.description)
        }
    }
}

#Preview {
    ProductoFila(producto: )
}
