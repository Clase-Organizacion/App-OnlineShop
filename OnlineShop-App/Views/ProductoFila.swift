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
            AsyncImage(url: URL(string: producto.imagen)){
                imagen in
                if let image = imagen.image{
                    image.resizable()
                        .frame(width: 100, height: 100)
                }
            }
            VStack {
                Text(producto.title)
                Text("$ "+String(producto.price))
                    .offset(x:-70)
            }
            .padding()
            
        }
        .padding()
    }
}

#Preview {
    ProductoFila(producto:Mockdata.sampleProduct )
}
