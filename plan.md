### Task 1: Extract Nouns for Classes

Nouns:
- Player
- MathGame
- Question

### Task 2: Write their roles

1. **Player Class:**
   - **Role:** Represents a player in the math game.
   - **State:**
     - Lives: to keep track of the number of lives the player has.
     - Name (optional): to store the player's name.
   - **Behavior:**
     - Initialization: Takes a name (optional) and initializes with 3 lives.
     - Method to answer a question, decrementing lives if the answer is incorrect.
     - Method to check if the player has lost all lives.
     - Method to display the player's current score.

2. **MathGame Class:**
   - **Role:** Manages the game flow, including generating questions and tracking player turns.
   - **State:**
     - Current Player: to keep track of whose turn it is.
   - **Behavior:**
     - Initialization: Takes two Player objects and initializes the game.
     - Method to start the game loop.
     - Method to generate a new question.
     - Method to switch the current player.
     - Method to announce the winner at the end of the game.
     - Method to display scores at the end of each turn.

3. **Question Class:**
   - **Role:** Represents a math question with two random numbers.
   - **State:**
     - Two random numbers for the question.
   - **Behavior:**
     - Initialization: Generates two random numbers for the question.
     - Method to check if a given answer is correct.

### Additional Points:

- **Initialization:**
  - The `Player` class will be initialized with a name (optional) and 3 lives.
  - The `MathGame` class will be initialized with two `Player` objects to start the game.

- **Public Methods:**
  - **Player Class:**
    - `answerQuestion(answer)`: Answers a question, decrementing lives if the answer is incorrect.
    - `hasLost()`: Checks if the player has lost all lives.
    - `displayScore()`: Displays the player's current score.

  - **MathGame Class:**
    - `startGame()`: Starts the game loop.
    - `generateQuestion()`: Generates a new question.
    - `switchPlayer()`: Switches the current player.
    - `announceWinner()`: Announces the winner at the end of the game.
    - `displayScores()`: Displays scores at the end of each turn.

- **Game Loop:**
  - The game loop will be part of the `MathGame` class.

- **Current Player Management:**
  - The `MathGame` class will manage who the current player is.

- **User I/O:**
  - The `MathGame` class will contain user I/O, presenting questions and announcing scores.

- **No User I/O:**
  - The `Player` and `Question` classes will not contain any user I/O logic. They focus on managing player state and representing a question, respectively.
