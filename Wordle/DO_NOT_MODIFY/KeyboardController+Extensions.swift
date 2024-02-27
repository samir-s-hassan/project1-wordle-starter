//
//  KeyboardController+Extensions.swift
//  Wordle
//
//  Created by Mari Batilando on 3/1/23.
//

import Foundation
import UIKit

extension KeyboardController {
  
  var itemPadding: Double { 8.0 }
  var numRows: Int { 3 }
  
  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 3
  }
  
  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      insetForSectionAt section: Int) -> UIEdgeInsets {
    return .zero
  }
  
  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    return itemPadding
  }
  
  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      sizeForItemAt indexPath: IndexPath) -> CGSize {
    let numItemsInRow = Double(numItems(in: indexPath.section))
    let widthWithoutPadding = collectionView.frame.size.width - ((numItemsInRow - 1.0) * itemPadding)
    let widthPerItem = widthWithoutPadding / numItemsInRow
    let numRows = Double(numRows)
    let height = (collectionView.frame.size.height - (numRows - 1.0) * itemPadding) / numRows
    return CGSize(width: widthPerItem, height: height)
  }
}
