//
//  BookDestinationView.swift
//  NavigationStackDemo
//
//  Created by Sivaramaiah NAKKA on 21/02/23.
//

import SwiftUI

struct BookDestinationView: View {
    
    let book: Book
    
    var body: some View {
        VStack {
            Text("Book detail view")
            
            Divider()
            
            NavigationLink("Suggestion 1", value: Book(title: "Suggestion 1"))
            NavigationLink("Suggestion 2", value: Book(title: "Suggestion 2"))
            NavigationLink("Suggestion 3", value: Book(title: "Suggestion 3"))
        }
        .navigationTitle(book.title)
    }
}

struct BookDestinationView_Previews: PreviewProvider {
    static var previews: some View {
        BookDestinationView(book: Book(title: "Alice in Wonderland"))
    }
}
