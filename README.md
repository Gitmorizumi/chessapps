## Linuxベースのチェスアプリをコンテナを使ってつくってみた

### 事前準備

- Dockerの知識
- [Cloud Foundry CLI](https://github.com/cloudfoundry/cli/releases)
- [Bluemix account](https://bluemix.net)
- [IBM Containers for Bluemix Cloud Foundry Plug-in](https://console.ng.bluemix.net/docs/containers/container_cli_ov.html#container_cli_ov)
- [Git](https://git-scm.org/)
- [Node.js](https://nodejs.org/en/)および[Bower](https://bower.io/)

### STEP1
オープンソースのチェスエンジンStockfishのDocker Imageの作成

```Dockerfile
#
# Stockfish Dockerfile
#
FROM ubuntu:14.04
ADD websocketd /root/websocketd
ADD stockfish_6_x64 /root/stockfish_6_x64
EXPOSE 8080
CMD /root/websocketd --port=8080 /root/stockfish_6_x64
```
