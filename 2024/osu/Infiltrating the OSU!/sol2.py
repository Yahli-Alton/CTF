import requests
from itertools import product

# r = requests.get("https://i.ppy.sh/27f5dded063c92f65be26afe39ffec72a06d711c/68747470733a2f2f7672657878792e732d756c2e65752f5972794b757a354a")
for digits in product("1234567890abcdef", repeat=5):
    r = requests.get(f"https://i.ppy.sh/{''.join(digits)}")
    print(r.text)
