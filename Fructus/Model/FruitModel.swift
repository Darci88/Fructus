//
//  FruitModel.swift
//  Fructus
//
//  Created by user219285 on 3/27/23.
//

import Foundation
import SwiftUI

//MARK: - Fruits data model
struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
