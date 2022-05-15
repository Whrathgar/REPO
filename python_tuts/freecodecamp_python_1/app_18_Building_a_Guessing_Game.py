
secret_word = "giraffe"
guess = ""
guess_cnt = 0
guess_limit = 3
out_of_guesses = False

while guess.upper() != secret_word.upper() and not(out_of_guesses):
    if guess_cnt < guess_limit:
        guess = input("Enter Guess: ")
        guess_cnt +=1
    else:
        out_of_guesses = True

if guess.upper() == secret_word.upper():
    print("You guessed correctly!!! The secret word was " + secret_word)
else: print("Out of guesses")