//
//  UnsplashPhoto.swift
//  WallpaperSearch
//
//  Created by Alif R on 15/12/20.
//

import Foundation

// MARK: - Model

struct UnsplashPhoto: Decodable {
  let total: Int
  let total_pages: Int
  let results: [SearchResults]
  
  enum CodingKeys: String, CodingKey {
    case total, total_pages, results
  }
}

struct SearchResults: Decodable {
  let photoURL: PhotoURL
  
  enum CodingKeys: String, CodingKey {
    case photoURL = "urls"
  }
}

struct PhotoURL: Decodable {
  let regular: String
  
  enum CodingKeys: String, CodingKey {
    case regular
  }
}
