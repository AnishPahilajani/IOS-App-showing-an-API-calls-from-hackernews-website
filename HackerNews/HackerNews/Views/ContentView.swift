//
//  ContentView.swift
//  HackerNews
//
//  Created by Anish Pahilajani on 2/9/20.
//  Copyright © 2020 Anish. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack{
                        Text(String(post.points))
                        Text(post.title)
                    }
                    
                }
            }
            .navigationBarTitle("HX04 News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//let posts = [
//    Post(id: "1", title: "hello"),
//    Post(id: "2", title: "hello"),
//    Post(id: "3", title: "hello")
//]
