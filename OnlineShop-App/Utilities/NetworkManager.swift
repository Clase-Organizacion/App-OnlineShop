// Manager/NetworkManager.swift
import Foundation

class NetworkManager {

    static let shared = NetworkManager()
    
    private let API_KEY = "006432d559f24903a4e191517242901"
    
    private let baseUrl = "https://fakestoreapi.com/products"
    
    func getProducto(url: String) async throws -> Producto{
        guard let completeUrl =  URL(string: baseUrl + API_KEY + url) else {
            throw WEError.invalidURL
        }
        
        let(data, response) = try await URLSession.shared.data(from: completeUrl)
       
        do{
            let decoder = JSONDecoder()
            return try decoder.decode(Producto.self, from: data)
        }catch{
            throw WEError.invalidData
        }
    }
}
