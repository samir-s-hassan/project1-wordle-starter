//
//  LetterCell.swift
//  Wordle
//
//  Created by Mari Batilando on 2/12/23.
//

import UIKit

enum LetterCellStyle {
  case initial
  case incorrect
  case correctLetterOnly
  case correctLetterAndPosition
}

class LetterCell: UICollectionViewCell {

  @IBOutlet weak var letterLabel: UILabel!

  required init?(coder: NSCoder) {
    super.init(coder: coder)
    layer.borderWidth = 2.0
    layer.borderColor = UIColor.gray.cgColor
  }

  // MARK: - Public Methods
  func set(letter: String) {
    letterLabel.text = letter
  }

  func clearLetter() {
    letterLabel.text = ""
  }

  /*
   Exercise 9:
   Set the correct background color depending on the style that is passed in:
   1. initial should set the background color to black and the border color to gray
   2. incorrect should set the background and border color to a red-green-blue-alpha (RGBA) value of 0.23, 0.23, 0.24, 1.0 respectively
   3. correctLetterOnly should set the background and border color to a RGBA value of 0.69, 0.63, 0.30, 1.0 respectively
   4. correctLetterAndPosition should set the background and border color to a RGBA value of 0.38, 0.55, 0.33, 1.0 respectively

   Tip 1: Use a switch-case statement to enumerate among the possible values of LetterCellStyle
   Tip 2: `contentView` is a UIView. Look at the documentation to see what property you can change to modify its background color
   Tip 3: Look at what initializers UIColor has in the API documentation
   Tip 4: Look above at the init method to see how to change the borderColor
   
   // Checkpoint: After finishing this exercise, you should now see that the board is accurately colored based on your guess! If it's not working, make sure you have done this exercise correctly.
   */
  func set(style: LetterCellStyle) {
    // START YOUR CODE
      switch style {
      case .initial: //can do . to autoreference?
          backgroundColor = .black
          layer.borderColor = UIColor.gray.cgColor
      case .incorrect:
          backgroundColor = UIColor(red: 0.23, green: 0.23, blue: 0.23, alpha: 0.23)
          layer.borderColor = UIColor(red: 0.23, green: 0.23, blue: 0.23, alpha: 0.23).cgColor //for the border color, we're having to end with cgColor
      case .correctLetterOnly:
          backgroundColor = UIColor(red: 0.69, green: 0.63, blue: 0.30, alpha: 1.0)
          layer.borderColor = UIColor(red: 0.69, green: 0.63, blue: 0.30, alpha: 1.0).cgColor
      case .correctLetterAndPosition:
          backgroundColor = UIColor(red: 0.38, green: 0.55, blue: 0.33, alpha: 1.0)
          layer.borderColor = UIColor(red: 0.38, green: 0.55, blue: 0.33, alpha: 1.0).cgColor
    }
    // END YOUR CODE HERE
  }
}
