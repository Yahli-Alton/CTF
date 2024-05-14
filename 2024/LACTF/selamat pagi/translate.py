import sys

with open("indonesian.txt", "r") as file:
    words = file.read().split()

word = sys.argv[1]

sorted_words = sorted(words, key=lambda x: 0 if len(word) != len(x) else sum(1 if l1 == l2 else 0 for l1, l2 in zip(word, x)), reverse=True)

print(sorted_words[:10])
