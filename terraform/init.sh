#!/bin/bash
yum install -y git
git clone https://github.com/DivyaJPofficial/GradingSystem.git
chmod -R 755 GradingSystem/
cd GradingSystem
pip3 install flask
pip3 install escape
python3 app.py
