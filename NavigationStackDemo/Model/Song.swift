//
//  Song.swift
//  NavigationStackDemo
//
//  Created by Sivaramaiah NAKKA on 21/02/23.
//

import Foundation

struct Song: Identifiable, Hashable, Codable {
    let title: String
    let artist: String
    let year: Int
    let id: UUID
    
    init(title: String, artist: String, year: Int) {
        self.title = title
        self.artist = artist
        self.year = year
        self.id = UUID()
    }

    static func examples() -> [Song] {
        return [
            Song(title: "Fight the Power", artist: "Public Enimy", year: 1989),
            Song(title: "Like a Rolling Stone", artist: "Bob Dylan", year: 1965),
            Song(title: "Smells Like Teen Spirit", artist: "Nirvana", year: 1991)
        ]
    }
}
