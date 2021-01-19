//
//  PhotoCell.swift
//  WallpaperSearch
//
//  Created by Alif R on 15/12/20.
//

import UIKit
import Kingfisher

class PhotoCell: UICollectionViewCell {
  @IBOutlet weak var photoImageView: UIImageView!
  
  func configurePhotos(_ searchResults: SearchResults?) {
    photoImageView.layer.cornerRadius = 8.0
    
    guard let results = searchResults else { return }
    let url = URL(string: results.photoURL.regular)
    photoImageView.kf.indicatorType = .activity
    photoImageView.kf.setImage(with: url, options: [.transition(.fade(0.9))])
  }
  
}
