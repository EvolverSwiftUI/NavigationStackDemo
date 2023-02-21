//
//  Movie.swift
//  NavigationStackDemo
//
//  Created by Sivaramaiah NAKKA on 21/02/23.
//

import Foundation

struct Movie: Identifiable, Hashable {
    let title: String
    let id: UUID
    
    init(title: String) {
        self.title = title
        self.id = UUID()
    }
    
    static func examples() -> [Movie] {
        return [
            Movie(title: "Titanic"),
            Movie(title: "Avatar"),
            Movie(title: "Lord of the Ring")
        ]
    }
}
