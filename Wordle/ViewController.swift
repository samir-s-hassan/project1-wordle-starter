//
//  ViewController.swift
//  Wordle
//
//  Created by Mari Batilando on 2/12/23.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var wordsCollectionView: UICollectionView!
  @IBOutlet weak var keyboardCollectionView: UICollectionView!

  private var boardController: BoardController!
  private var keyboardController: KeyboardController!

  override func viewDidLoad() {
    super.viewDidLoad()

    setupNavigationBar()

    boardController = BoardController(collectionView: wordsCollectionView)
    keyboardController = KeyboardController(collectionView: keyboardCollectionView)
    /*
      Exercise 3: Assign a closure to the `didSelectString` property of `keyboardController` (see KeyboardController.swift):
      
      This closure takes in a string (the string selected from the keyboard).
      If the string is equal to the `DELETE_KEY` constant (see Constants.swift), then call the `deleteLastCharacter` method of `boardController`.
      Else, it should use the `enter` method of `boardController` and pass in the selected string as the argument.
     */
    // START YOUR CODE
      keyboardController.didSelectString = {[boardController] chosenString in
          if chosenString == DELETE_KEY{
              boardController?.deleteLastCharacter()
          }
          else{
              boardController?.enter(chosenString)
          }
      }
      //SAMIR - this is how to assign a closer to a property. We wanted to reference the boardController so we did []. We have to name our argument which I named it chosenString. We have to type in right after the name. Then, when we are calling functions from the instance of boardController, we have to use ?. 
    // END YOUR CODE HERE
  }
}
