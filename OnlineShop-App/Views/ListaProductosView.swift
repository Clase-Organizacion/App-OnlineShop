//
//  ListaProductosView.swift
//  OnlineShop-App
//
//  Created by  on 23/2/24.
//

import SwiftUI

struct ListaProductosView: View {
    @ObservedObject var list = ProductosViewModel()
   
    var body: some View {
        List(list.productList) { producto in
            ProductoFila(producto: producto)
        }
    }
}


struct ListaProductosView_Previews: PreviewProvider {
    static var previews: some View {
        ListaProductosView()
    }
}
