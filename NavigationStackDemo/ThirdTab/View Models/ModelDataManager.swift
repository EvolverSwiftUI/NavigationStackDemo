//
//  ModelDataManager.swift
//  NavigationStackDemo
//
//  Created by Sivaramaiah NAKKA on 21/02/23.
//

import Foundation

class ModelDataManager: ObservableObject {
    
    @Published var books: [Book] = Book.examples()
    @Published var movies: [Movie] = Movie.examples()
    @Published var songs: [Song] = Song.examples()
    
}
