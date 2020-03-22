//
//  detailView.swift
//  HackerNews
//
//  Created by Anish Pahilajani on 2/9/20.
//  Copyright © 2020 Anish. All rights reserved.
//

import SwiftUI


struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct detailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}


