//
//  ListaProductosView.swift
//  OnlineShop-App
//
//  Created by  on 23/2/24.
//

import SwiftUI

struct ListaProductosView: View {
    @Binding var productos: [Producto]
    var body: some View {
        List(productos) { producto in
            ProductoFila(producto: producto)
        }
    }
}

struct ListaProductosView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListaProductosView(productos: .constant(Mockdata.productos))
        }
    }
}
