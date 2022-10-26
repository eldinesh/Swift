// Validate user input
func getUserChoice(_ userInput: String) -> String {
  if userInput == "rock" || userInput == "paper" || userInput == "scissors" {
    return userInput
  } else {
    return "You can only enter rock, paper, or scissors. Try again."
  }
}

// Generate Computer input
func getComputerChoice() -> String {
  let choices = ["rock", "paper", "scissors"]
  return choices.randomElement()!
}

// Generate the winner
func determineWinner(_ userChoice: String, _ compChoice: String) -> String {
  var decision = "It's a tie"

  switch userChoice {
    case "rock":
      if compChoice == "paper" {
        decision = "The computer won"
      } else if compChoice == "scissors" {
        decision = "The use won"
      }
    case "paper":
      if compChoice == "rock" {
        decision = "The user won"
      } else if compChoice == "scissors" {
        decision = "The computer won"
      }
    case "scissors":
      if compChoice == "rock" {
        decision = "The computer won"
      } else if compChoice == "paper" {
        decision = "The user won"
      }
    default:
      print("Something went wrong")
  }
  return decision
}

// Get User and Computer choices
let userChoice = getUserChoice("paper")
let compChoice = getComputerChoice()

print("You threw \(userChoice)")
print("The computer threw \(compChoice)")
print(determineWinner(userChoice, compChoice))