//
//  KeyboardViewController.swift
//  Wordle
//
//  Created by Mari Batilando on 2/12/23.
//

import UIKit

class KeyboardController: NSObject,
                          UICollectionViewDataSource,
                          UICollectionViewDelegate,
                          UICollectionViewDelegateFlowLayout {

  private let keyboardRows: [[String]] = [
    ["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P"],
    ["A", "S", "D", "F", "G", "H", "J", "K", "L"],
    ["Z", "X", "C", "V", "B", "N", "M", DELETE_KEY]
  ]
  var didSelectString: ((String) -> Void)?

  init(collectionView: UICollectionView) {
    super.init()
    collectionView.delegate = self
    collectionView.dataSource = self
  }

  func collectionView(_ collectionView: UICollectionView,
                      numberOfItemsInSection section: Int) -> Int {
    // Exercise 1: Return the correct number of items in a section
    // Tip: There's a helper method you can use located in this class
    // START YOUR CODE HERE
      return numItems(in: section)
    // END YOUR CODE HERE
  }

  func collectionView(_ collectionView: UICollectionView,
                      cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "KeyboardCell",
                                                  for: indexPath) as! KeyboardCell
    cell.configure(with: keyboardRows[indexPath.section][indexPath.row])
    // Exercise 4: Pass in the `didSelectString` closure to the KeyboardCell's corresponding property
    // START YOUR CODE
      cell.didSelectString = didSelectString
    // END YOUR CODE HERE
    return cell
  }

  // MARK: - Private Methods
  func numItems(in row: Int) -> Int {
    return keyboardRows[row].count
  }
}
