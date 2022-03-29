
# Table OR AND NOT
'''
- true or true = true
- true or false = true
- false or true = true
- false or false = false

- true and true = true
- true and false = false
- false and true = false
- false and false = false

- not true = false
- not false = true
'''

# rock, paper, scissors
import random


rock = "rock"
paper = "paper"
scissors = "scissors"
spoke = "spoke"
lizard = "lizard"

user_choice = ""
computer_choice = ""

computer_choice = random.choice(["rock", "paper", "scissors", "spoke", "lizard"])

while True:
    user_choice = input("Select rock, paper, or scissors, spoke, lizard? ").lower()
    if user_choice == "rock":
        print("You chose rock.")
        break
    elif user_choice == "paper":
        print("You chose paper.")
        break
    elif user_choice == "scissors":
        print("You chose scissors.")
        break
    elif user_choice == "spoke":
        print("You chose spoke.")
        break
    elif user_choice == "lizard":
        print("You chose lizard.")
        break
    else:
        print("Invalid input. Try again.")

if user_choice == computer_choice:
    print("It's a tie!")

elif user_choice == "rock":
    if computer_choice == "paper":
        print("You lose! Paper beats rock.")
    else:
        print("You win! Rock beats scissors.")

elif user_choice == "paper":
    if computer_choice == "scissors":
        print("You lose! Scissors beats paper.")
    else:
        print("You win! Paper beats rock.")

elif user_choice == "scissors":
    if computer_choice == "rock":
        print("You lose! Rock beats scissors.")
    else:
        print("You win! Scissors beats paper.")

elif user_choice == "spoke":
    if computer_choice == "lizard":
        print("You lose! Lizard beats spoke.")
    else:
        print("You win! Spoke beats rock.")

elif user_choice == "lizard":
    if computer_choice == "rock":
        print("You lose! Rock beats lizard.")
    else:
        print("You win! Lizard beats spoke.")
