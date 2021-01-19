//
//  ViewController.swift
//  WallpaperSearch
//
//  Created by Alif R on 11/12/20.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
  
  @IBOutlet weak var searchBar: UISearchBar!
  @IBOutlet weak var collectionView: UICollectionView!
  
  private let itemsPerRow: CGFloat = 2
  private let sectionInsets = UIEdgeInsets(top: 16.0, left: 16.0, bottom: 16.0, right: 16.0)
  
  private var searchResults: [SearchResults]?
  private var currentPage = 1
  private var totalPages = 1
  private var keyword: String?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configureViews()
  }
  
  func configureViews() {
    searchBar.delegate = self
    searchBar.placeholder = "Search"
    
    collectionView.register(UINib(nibName: Constants.photoCell, bundle: nil), forCellWithReuseIdentifier: Constants.photoCell)
  }
  
  private func requestPhotos(_ keyword: String, _ isFirstPage: Bool) {
    if !isFirstPage && currentPage <= totalPages {
      currentPage += 1
    }
    
    let header: HTTPHeaders = [
      "Accept-Version": "v1"
    ]
    
    let params: [String: Any] = [
      "client_id": "mAromJWen2lyBpSuZGY1tf0dg4inru07E3m50cyhbQ8",
      "page": currentPage,
      "query": "\(keyword)",
      "orientation": "portrait"
    ]
    
    AF.request(Constants.searchURL, method: .get, parameters: params, headers: header).validate().responseDecodable(of: UnsplashPhoto.self) { response in
      guard let results = response.value?.results else { return }
      self.totalPages = response.value?.total_pages ?? 0
      
      if isFirstPage {
        self.searchResults = results
      } else {
        self.searchResults?.append(contentsOf: results)
      }
      
      self.collectionView.reloadData()
    }
  }
  
  func scrollViewDidScroll(_ scrollView: UIScrollView) {
    if (scrollView.contentOffset.y >= (scrollView.contentSize.height - scrollView.frame.size.height)) {
      if let keyword = keyword {
        requestPhotos(keyword, false)
      }
    }
  }
}

// MARK: - UISearchBarDelegate

extension ViewController: UISearchBarDelegate {
  
  func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
    if let keyword = searchBar.text {
      self.keyword = keyword
      requestPhotos(keyword, true)
    }
    
    view.endEditing(true)
  }
}

// MARK: - UICollectionViewDataSource

extension ViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return searchResults?.count ?? 0
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.photoCell, for: indexPath) as! PhotoCell
    cell.configurePhotos(searchResults?[indexPath.row])
    
    return cell
  }
}

// MARK: - UICollectionViewDelegateFlowLayout

extension ViewController: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
    let availableWidth = view.frame.width - paddingSpace
    let widthPerItem = availableWidth / itemsPerRow
//    let heightPerItem: CGFloat = indexPath.row > 0 ? 300.0 : 250.0
    let heightPerItem: CGFloat = 300.0
    
    return CGSize(width: widthPerItem, height: heightPerItem)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    return sectionInsets
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return sectionInsets.left
  }
}

