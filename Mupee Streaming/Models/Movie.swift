//
//  Movie.swift
//  Mupee Streaming
//
//  Created by Stefanus Hermawan Sebastian on 13/07/22.
//

import Foundation

struct TrendingMoviesResponse: Codable {
    let results: [Movie]
    
}

struct Movie: Codable {
    let id: Int
    let media_type: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
}

/*

 adult = 0;
 "backdrop_path" = "/p1F51Lvj3sMopG948F5HsBbl43C.jpg";
 "genre_ids" =             (
     28,
     12,
     14
 );
 id = 616037;
 "media_type" = movie;
 "original_language" = en;
 "original_title" = "Thor: Love and Thunder";
 overview = "After his retirement is interrupted by Gorr the God Butcher, a galactic killer who seeks the extinction of the gods, Thor enlists the help of King Valkyrie, Korg, and ex-girlfriend Jane Foster, who now inexplicably wields Mjolnir as the Mighty Thor. Together they embark upon a harrowing cosmic adventure to uncover the mystery of the God Butcher\U2019s vengeance and stop him before it\U2019s too late.";
 popularity = "4414.917";
 "poster_path" = "/pIkRyD18kl4FhoCNQuWxWu5cBLM.jpg";
 "release_date" = "2022-07-06";
 title = "Thor: Love and Thunder";
 video = 0;
 "vote_average" = "6.907";
 "vote_count" = 639;
 
*/
