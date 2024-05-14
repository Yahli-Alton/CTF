# docker build -t gulasch-casino:latest .
# docker run -d -p 1337:1337 -e FLAG="GPNCTF{fake_flag}" gulasch-casino:latest

FROM python:latest

RUN apt update
RUN apt install -y socat

COPY . .

EXPOSE 1337
ENTRYPOINT ["socat", "TCP-LISTEN:1337", "EXEC:'python3 blackjack.py'"]
