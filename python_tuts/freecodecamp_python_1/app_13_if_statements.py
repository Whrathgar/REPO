
gen = input("Enter male or female please: ")
ht = input("Are you at least 6 feet tall?, enter Yes or No: ")
if gen.upper() == "MALE":
    is_male = True
else: is_male = False

if ht.upper() == "YES":
    is_tall = True
else: is_tall = False

if is_male and is_tall:
    print("You are a big strong man!\nYou will attain glory!"
          "\nYou will father many children!")
elif is_male and not(is_tall):
    print("You are a girly man who will achieve nothing. No woman will want you."
          "\nYou will father few children... Sad...")
elif is_tall and not(is_male):
    print("You are a large woman. You may be good for protecting a weak husband."
          "\nYou may also survive birthing many babies.")
elif not(is_male) and not(is_tall):
    print("You are but a dainty little flower of a girl. Men will chase you."
          "\nBut you may not survive many child births... Sad...")