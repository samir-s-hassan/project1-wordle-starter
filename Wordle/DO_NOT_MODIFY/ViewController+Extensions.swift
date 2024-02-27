//
//  ViewController+Extensions.swift
//  Wordle
//
//  Created by Mari Batilando on 3/1/23.
//

import Foundation
import UIKit

extension ViewController {
  func setupNavigationBar() {
    navigationController!.navigationBar.isTranslucent = false
    navigationController!.navigationBar.titleTextAttributes = [
      .font: UIFont.systemFont(ofSize: 28.0),
      .foregroundColor: UIColor.white
    ]
    navigationController!.navigationItem.rightBarButtonItem = UIBarButtonItem(
      image: UIImage(systemName: "bell"),
      style: .plain,
      target: nil,
      action: nil
    )
  }
}
