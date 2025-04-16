#!/bin/bash
cd /home/ec2-user/flask-cicd-demo
pip3 install -r requirements.txt
pkill -f "python3 app.py" || true
nohup python3 app.py > /dev/null 2>&1 &
