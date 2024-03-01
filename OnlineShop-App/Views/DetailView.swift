import SwiftUI

struct DetailView: View {
    var producto: Producto
    
    var body: some View {
        ZStack {
            // Fondo semiopaco
            Color.black.opacity(0.3)
                .edgesIgnoringSafeArea(.all)
            
            // Contenido principal
            VStack {
                AsyncImage(url: URL(string: producto.image)) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                    case .success(let image):
                        image
                            .resizable()
                            .frame(width: 100, height: 100)
                    case .failure:
                        Image(systemName: "photo")
                            .resizable()
                            .frame(width: 200, height: 200)
                            .foregroundColor(.gray)
                    @unknown default:
                        EmptyView()
                    }
                }
                .frame(height: 100)
                
                Text(producto.title)
                    .font(.system(size: 20))
                    .bold()
                    .padding()
                    
                Text(producto.description)
                    .padding()
                    .font(.system(size:16))
                
                HStack {
                    ForEach(1..<6) { index in
                        Image(systemName: index <= Int(producto.rating.rate) ? "star.fill" : "star")
                            .foregroundColor(.yellow)
                    }
                }
                .padding()
                
                Button(action: {
                    print("Button tapped")
                }) {
                    Text("\(String(producto.price)) € - Añadir al carrito")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                }
            }
            .padding()
            .background(Color.white)
            .cornerRadius(15)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(producto: Mockdata.sampleProduct)
    }
}
