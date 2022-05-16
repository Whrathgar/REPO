#https://www.youtube.com/watch?v=rfscVS0vtbw
#2:52:41
#Giraffe Languge
#vowels -> g
# dog -> dgg
# cat -> cgt

#Giraffe Translator
def translate(phrase):
    trans = ""
    for letter in phrase:
        if letter in "AEIOUaeiou":
            if letter.isupper():
                trans = trans + "G"
            else:
                trans = trans + "g"
        else: trans = trans + letter
    return trans

print(translate(input("Enter a phrase: ")))
