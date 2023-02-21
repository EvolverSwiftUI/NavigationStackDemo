//
//  MovieDetailView.swift
//  NavigationStackDemo
//
//  Created by Sivaramaiah NAKKA on 21/02/23.
//

import SwiftUI

struct MovieDetailView: View {
    
    let movie: Movie
    
    var body: some View {
        VStack {
            Text("Movie Detail View")
        }
        .navigationTitle(movie.title)
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: Movie(title: "Avatar"))
    }
}
