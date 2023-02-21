//
//  RootView.swift
//  NavigationStackDemo
//
//  Created by Sivaramaiah NAKKA on 21/02/23.
//

import SwiftUI

struct RootView: View {
    
    @ObservedObject var manager: ModelDataManager
    
    var body: some View {
        List {
            Section("Songs") {
                ForEach(manager.songs) { song in
                    NavigationLink(song.title, value: SelectionState.song(song))
                }
            }

            Section("Movie") {
                ForEach(manager.movies) { movie in
                    NavigationLink(movie.title, value: SelectionState.movie(movie))
                }
            }

            Section("Book") {
                ForEach(manager.books) { book in
                    NavigationLink(book.title, value: SelectionState.book(book))
                }
            }
            
            NavigationLink("Settings", value: SelectionState.settings)
        }
        .navigationTitle("Root View")
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView(manager: ModelDataManager())
    }
}
