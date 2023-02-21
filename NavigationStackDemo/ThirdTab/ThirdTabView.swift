//
//  ThirdTabView.swift
//  NavigationStackDemo
//
//  Created by Sivaramaiah NAKKA on 21/02/23.
//

import SwiftUI


enum SelectionState: Hashable {
    case movie(Movie)
    case song(Song)
    case book(Book)
    case settings
}

struct ThirdTabView: View {
    
    @StateObject var manager = ModelDataManager()
    
    var body: some View {
        NavigationStack {
            RootView(manager: manager)
                //.navigationDestination(for: Book.self) { book in
                //    BookDestinationView(book: book)
                //}
                .navigationDestination(for: SelectionState.self) { state in
                    switch state {
                    case let .book(book):
                        BookDetailView(book: book)
                    case let .movie(movie):
                        MovieDetailView(movie: movie)
                    case let .song(song):
                        SongDetailView(song: song)
                    case .settings:
                        SettingsView()
                    }
                }
        }
        .environmentObject(manager)
        .environment(\.colorScheme, .dark)
    }
}

struct ThirdTabView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdTabView()
    }
}
