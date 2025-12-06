import os

# check file exsit
if os.path.exists("file.txt"):
    print(" file.txt exist ")
else:
    print("file.txt does not exist!")

# read file
with open("file.txt", "r") as f:
    lines = f.readlines()
for index, line in enumerate(lines):
    print(index, line)

# write file
with open("file.txt", "a") as f:
    f.write("\nabc")
