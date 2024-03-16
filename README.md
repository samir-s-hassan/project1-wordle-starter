# Project 1 - Wordle Pt. 1

Submitted by: Samir Hassan

Wordle is an app that allows users to enter words (5 tries) in an attempt to guess the goal word. A user is notified if their word contains the letter in the goal word or even the letter in the right place for the goal word. If a user guesses the goal word, they have won the game and are communicated this by the styling of their word submission.

Time spent: 4 hours spent in total

## Required Features

The following **required** functionality is completed:

- [X] App displays a keyboard on the screen
- [X] When tapping on the keyboard, a letter is shown or deleted (letter selected)
- [X] User can play a basic version of Wordle, with different goal words each time

The following **optional** features are implemented:

- [X] Improve and customize the user interface by adding a launchscreen and app icon
- [ ] Run the app on a device rather than in the simulator

The following **additional** features are implemented:

N/A

## Video Walkthrough

[Video] (N/A)

## Notes

Describe any challenges encountered while building the app.

Some challenges included 
- Passing in the closure to the keyboard controller
- Passing in the closure to the keyboard cell
- Calling the closure in keyboard cell
- Changing the scale of the cell
- Syntax and general functions
- Making a launch screen
- Accidentally made a forked repository with the starter code

Overall, most of my challenges revolved around closures and how to specifically write one. It took me a while to also understand how to set a closure to a word/variable so I can later call it. Another issue with closures were the scope of the closure and the scope of the class I'm writing in. In general, I had issues with the basic syntax as I haven't written much in Swift. Some general functions had to be looked up like the randomize an element out of an array, printing to console, and adding to an array. I had trouble making a launch screen so I did not add that feature. I had accidentally made a forked repository with the starter code which meant I could not make the repository private. To solve this, I simply copy-pasted all the contents from the previous repository into this new one and did one big commit and push.

## License

    Copyright [2024] [Samir Hassan]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
