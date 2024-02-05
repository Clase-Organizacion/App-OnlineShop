//
//  Productos.swift
//  OnlineShop-App
//
//  Created by Arkaitz Lopez on 5/2/24.
//

import Foundation
import SwiftUI

struct Producto: Codable, Identifiable{
    let id = UUID().uuidString
    var title: String
    var price: Double
    var description: String
    var category: String
    var imagen: String
    var rating: Rating
}

struct Rating: Codable {
    var rate: Double
}
