import SwiftUI

struct ProductListView: View {
    @ObservedObject var list: ProductosViewModel

    var body: some View {
        NavigationView {
            List(list.products) { product in
                NavigationLink(destination: //ProductDetailView(producto: product))
                               {
                    ProductoFila(product: product)
                }
            }
            .navigationTitle("Productos")
        }
    }
}

struct ProductListView: PreviewProvider {
    static var previews: some View {
        ProductListView(list: ProductosViewModel())
    }
}
