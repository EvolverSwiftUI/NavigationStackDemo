//
//  Book.swift
//  NavigationStackDemo
//
//  Created by Sivaramaiah NAKKA on 21/02/23.
//

import Foundation

struct Book: Identifiable, Hashable {
    let title: String
    let id: UUID
    
    init(title: String) {
        self.title = title
        self.id = UUID()
    }
    
    static func examples() -> [Book] {
        return [
            .init(title: "Lord of the Rings"),
            .init(title: "Game of Thrones"),
            .init(title: "The Shining")
        ]
    }
}
