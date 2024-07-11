# open file and read it
# split the file into a list of strings

def solve(): 
    with open('chalkboardgag.txt', 'r') as file:
        data = file.read().splitlines()
        for line in data:
            if (line != "I WILL NOT BE SNEAKY"):
                print(line)

print(solve())

bcactf{BaRT_W0U1D_B3_PR0uD}