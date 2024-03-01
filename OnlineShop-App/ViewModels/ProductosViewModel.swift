//
//  VitoriaViewModel.swift
//  WeatherApp
//
//  Created by Arkaitz Lopez on 8/1/24.
//

import SwiftUI

import Foundation

@MainActor
class ProductosViewModel: ObservableObject {
    @Published var productList: [Producto] = []
    
    init() {
            // Llamada al inicializador designado con una URL predeterminada
            getProduct()
        }
    
    
    func getProduct(){
            Task{ //hace que sea asíncrona la tarea, consiguiendo concurrencia
                do{
                    let producto = try await NetworkManager.shared.getProduct()
                    self.productList = producto
                }catch{
                    
                    if let callError = error as? WEError {
                        switch callError{
                        case .invalidURL:
                            print("Invalid URL")
                        case .invalidResponse:
                            print("Invalid response")
                        case .invalidData:
                            print("Invalid data")
                        case .unableToComplete:
                            print("Unable to complete")
                        }
                        
                    }else{
                        //Generic error
                        print("Invalid response")
                    }
                }
            }
        }
    
}
