#
# Stockfish Dockerfile
#

FROM ubuntu:14.04

ADD websocketd /root/websocketd
ADD stockfish_6_x64 /root/stockfish_6_x64

EXPOSE 8080

CMD /root/websocketd --port=8080 /root/stockfish_6_x64
