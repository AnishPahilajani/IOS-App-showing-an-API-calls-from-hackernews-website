//
//  PostData.swift
//  HackerNews
//
//  Created by Anish Pahilajani on 2/9/20.
//  Copyright © 2020 Anish. All rights reserved.
//

import Foundation


struct Results: Decodable{
    let hits: [Posts]
}

struct Posts: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}
