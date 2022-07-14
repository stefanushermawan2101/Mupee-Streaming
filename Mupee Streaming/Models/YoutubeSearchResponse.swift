//
//  YoutubeSearchResponse.swift
//  Mupee Streaming
//
//  Created by Stefanus Hermawan Sebastian on 14/07/22.
//

import Foundation

struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}

struct VideoElement: Codable {
    let id: IdVideoElement
}

struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}
