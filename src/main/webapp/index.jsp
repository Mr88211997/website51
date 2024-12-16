<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Guess the Number Game</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .game-container {
            background-color: white;
            padding: 200px;
            border-radius: 32px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }

        h1 {
            color: #333;
        }

        .message {
            margin-top: 10px;
            color: #ff0000;
        }

        .btn {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #45a049;
        }

        input[type="number"] {
            padding: 10px;
            width: 80%;
            margin: 10px 0;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .score {
            font-size: 18px;
            font-weight: bold;
        }

        .reset-btn {
            background-color: #f44336;
        }

        .reset-btn:hover {
            background-color: #d32f2f;
        }
    </style>
</head>
<body>

    <div class="game-container">
        <h1>Guess the Number</h1>
        <p>Guess a number between 1 and 100</p>
        <input type="number" id="guess" placeholder="Enter your guess" />
        <button class="btn" onclick="checkGuess()">Submit Guess</button>
        <p class="message" id="message"></p>
        <p class="score" id="score">Attempts Left: <span id="attempts">10</span></p>
        <button class="btn reset-btn" onclick="resetGame()">Start New Game</button>
    </div>

    <script>
        let randomNumber;
        let attemptsLeft;

        // Initialize a new game
        function startGame() {
            randomNumber = Math.floor(Math.random() * 100) + 1; // Random number between 1 and 100
            attemptsLeft = 10;
            document.getElementById('attempts').textContent = attemptsLeft;
            document.getElementById('message').textContent = "";
            document.getElementById('guess').value = "";
        }

        // Check the player's guess
        function checkGuess() {
            const guess = parseInt(document.getElementById('guess').value);
            const messageElement = document.getElementById('message');

            if (isNaN(guess) || guess < 1 || guess > 100) {
                messageElement.textContent = "Please enter a number between 1 and 100.";
                return;
            }

            attemptsLeft--;
            document.getElementById('attempts').textContent = attemptsLeft;

            if (guess < randomNumber) {
                messageElement.textContent = "Too low! Try again.";
            } else if (guess > randomNumber) {
                messageElement.textContent = "Too high! Try again.";
            } else {
                messageElement.textContent = `Congratulations! You guessed the right number: ${randomNumber}`;
                messageElement.style.color = "#4CAF50"; // Green for success
                document.querySelector('button').disabled = true; // Disable the submit button
            }

            if (attemptsLeft === 0) {
                messageElement.textContent = `Game Over! The correct number was ${randomNumber}.`;
                document.querySelector('button').disabled = true; // Disable the submit button when game over
            }
        }

        // Reset the game
        function resetGame() {
            startGame();
            document.querySelector('button').disabled = false; // Enable the submit button
        }

        // Start the game when the page loads
        window.onload = startGame;
    </script>

</body>
</html>
