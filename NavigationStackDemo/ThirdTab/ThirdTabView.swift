//
//  ThirdTabView.swift
//  NavigationStackDemo
//
//  Created by Sivaramaiah NAKKA on 21/02/23.
//

import SwiftUI

struct ThirdTabView: View {
    
    @StateObject var manager = ModelDataManager()
    @StateObject var navigationManager = NavigationStateManager()
    
    /// nothingbut "user-defaults" only
    @SceneStorage("navigationState") var navigationStateData: Data?
    
    var body: some View {
        NavigationStack(path: $navigationManager.selectionPath) {
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
        .environmentObject(navigationManager)
        .environment(\.colorScheme, .dark)
        /*
        .task {
            // reset during launch
            navigationManager.data = navigationStateData
            
            // save state to user defaults
            for await _ in navigationManager.objectWillChangeSequence {
                navigationStateData = navigationManager.data
            }
        }
         */
        
        //.onReceive(navigationManager.$selectionPath.dropFirst()) { updatedPath in
        .onReceive(navigationManager.objectWillChange.dropFirst()) { _ in
            // save state to user defaults
            navigationStateData = navigationManager.data
        }
        .onAppear {
            // reset during launch
            navigationManager.data = navigationStateData
        }
    }
}

struct ThirdTabView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdTabView()
    }
}
