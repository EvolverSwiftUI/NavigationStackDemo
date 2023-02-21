//
//  BookDetailView.swift
//  NavigationStackDemo
//
//  Created by Sivaramaiah NAKKA on 21/02/23.
//

import SwiftUI

struct BookDetailView: View {
    
    let book: Book
    
    var body: some View {
        VStack {
            Text("Book Detail View")
        }
        .navigationTitle(book.title)

    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book: Book(title: "5AM Club"))
    }
}
