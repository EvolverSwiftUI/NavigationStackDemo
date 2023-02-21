//
//  SongDetailView.swift
//  NavigationStackDemo
//
//  Created by Sivaramaiah NAKKA on 21/02/23.
//

import SwiftUI

struct SongDetailView: View {
    
    let song: Song
    @EnvironmentObject var manager: ModelDataManager
    
    var body: some View {
        VStack {
            Text(song.title)
            Text(song.artist)
                .bold()
            Text("\(song.year)")
            
            Divider()
            
            VStack(alignment: .leading) {
                Text("People also liked")
                    .padding(.bottom)
                ForEach(manager.songs) { song in
                    NavigationLink(value: SelectionState.song(song)) {
                        Label(song.title, systemImage: "music.note")
                    }
                }
            }
        }
        .navigationTitle(song.title)
    }
}

struct SongDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SongDetailView(song: Song(title: "Maduram", artist: "Gokul", year: 1900))
            .environmentObject(ModelDataManager())
    }
}
