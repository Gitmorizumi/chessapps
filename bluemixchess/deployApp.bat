@echo off
wget http://chessboardjs.com/releases/0.3.0/chessboardjs-0.3.0.zip
unzip -o chessboardjs-0.3.0.zip -d app\public
cd app
bower --config.interactive=false install
cd ..
cf push -f app\manifest.yml
