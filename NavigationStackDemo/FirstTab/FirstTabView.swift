//
//  FirstTabView.swift
//  NavigationStackDemo
//
//  Created by Sivaramaiah NAKKA on 20/02/23.
//

import SwiftUI

struct FirstTabView: View {
    
    @State private var showSetting: Bool = false
    @State private var path = NavigationPath()
    var body: some View {
        VStack {
            NavigationStack(path: $path) {
                List {
                    Text("Root View")
                    NavigationLink("Go to A", value: "Show AAA")
                    NavigationLink("Go to B", value: "Show BBB")
                    NavigationLink("Go to number 1", value: 1)
                    
                    Button {
                        path.append("GGGG")
                    } label: {
                        Text("Show Favorite")
                    }
                    Button {
                        showSetting.toggle()
                    } label: {
                        Text("Setting")
                    }
                    
                    Section("Old") {
                        NavigationLink("Old Link with Destination") {
                            Text("Details View")
                        }
                    }
                }
                .navigationTitle("Root View")
                .navigationDestination(for: String.self) { textValue in
                    //Text("Details : \(receivedValue)")
                    DetailView(text: textValue, path: $path)
                }
                .navigationDestination(for: Int.self) { numberValue in
                    Text("Detail with \(numberValue)")
                }
                .navigationDestination(isPresented: $showSetting) {
                    Text("Setting")
                }
            }
            
            Text("Path")
            Text("number of detail views on the stack: \(path.count)")
            Button {
                path.removeLast()
            } label: {
                Text("go back one view")
            }
            Button {
                path = NavigationPath()
            } label: {
                Text("Go to root view")
            }
        }
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView()
    }
}
