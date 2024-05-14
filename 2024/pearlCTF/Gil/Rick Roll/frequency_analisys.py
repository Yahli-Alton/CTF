from functools import reduce

normal_frequencies = {
    "a": 8.167,
    "b": 1.492,
    "c": 2.782,
    "d": 4.253,
    "e": 12.702,
    "f": 2.228,
    "g": 2.015,
    "h": 6.094,
    "i": 6.966,
    "j": 0.153,
    "k": 0.772,
    "l": 4.025,
    "m": 2.406,
    "n": 6.749,
    "o": 7.507,
    "p": 1.929,
    "q": 0.095,
    "r": 5.987,
    "s": 6.327,
    "t": 9.056,
    "u": 2.758,
    "v": 0.978,
    "w": 2.360,
    "x": 0.150,
    "y": 1.974,
    "z": 0.074
}

for k in normal_frequencies:
    normal_frequencies[k] /= 100

with open("text.txt", "r") as file:
    m = file.read()

frequencies = {

}

for l in m:
    l = l.lower()
    if l not in "abcdefghijklmnopqrstuvwxyz":
        continue
    if l in frequencies:
        frequencies[l] += 1
    else:
        frequencies[l] = 1

s = sum(frequencies.values())

for l in frequencies:
    frequencies[l] /= s

lst1 = sorted(normal_frequencies.items(), key=lambda x: x[1], reverse=True)
lst2 = sorted(frequencies.items(), key=lambda x: x[1], reverse=True)

for (l1, f1), (l2, f2) in zip(lst1, lst2):
    print(f"{l1}: {str(round(f1, 5)).ljust(7)},  {l2}: {str(round(f2, 5)).ljust(5)}")

# m_clean = m.replace(":", "").replace("{", "").replace("}", "").replace("_", "")

# words = m_clean.split()

# sorted_words = sorted(words, key=lambda x: reduce(float.__mul__, [frequencies[l.lower()] for l in x]), reverse=True)
# print(sorted_words)
