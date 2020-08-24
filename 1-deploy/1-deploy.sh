#!/bin/bash

kubeless function deploy get -f prom-edge.py -d requirements.txt -r python3.7 --handler prom-edge.get
kubeless function deploy put -f prom-edge.py -d requirements.txt -r python3.7 --handler prom-edge.put