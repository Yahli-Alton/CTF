from functools import reduce

normal_frequencies = {
    "A".lower(): 0.2039,
    "B".lower(): 0.0264,
    "C".lower(): 0.0076,
    "D".lower(): 0.0500,
    "E".lower(): 0.0828,
    "F".lower(): 0.0021,
    "G".lower(): 0.0366,
    "H".lower(): 0.0274,
    "I".lower(): 0.0798,
    "J".lower(): 0.0087,
    "K".lower(): 0.0514,
    "L".lower(): 0.0326,
    "M".lower(): 0.0421,
    "N".lower(): 0.0933,
    "O".lower(): 0.0126,
    "P".lower(): 0.0261,
    "Q".lower(): 0.0001,
    "R".lower(): 0.0464,
    "S".lower(): 0.0415,
    "T".lower(): 0.0558,
    "U".lower(): 0.0462,
    "V".lower(): 0.0018,
    "W".lower(): 0.0048,
    "X".lower(): 0.0003,
    "Y".lower(): 0.0188,
    "Z".lower(): 0.0004
}

with open("message.txt", "r") as file:
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
    print(f"{l1}: {str(f1).ljust(6)},  {l2}: {str(round(f2, 5)).ljust(5)}")

m_clean = m.replace(":", "").replace("{", "").replace("}", "").replace("_", "")

words = m_clean.split()

sorted_words = sorted(words, key=lambda x: reduce(float.__mul__, [frequencies[l.lower()] for l in x]), reverse=True)
print(sorted_words)
