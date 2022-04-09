#!/bin/bash
echo "Stop node"
systemctl stop massad
echo "applying massa bootstrap fix"
echo '[bootstrap]
max_ping = 10000
        bootstrap_list = [
        ["194.233.95.166:31245", "6eixWUbvxSTBDReVjUPzFc2yp7HT5k2KsAENkf1YeBAJ2vwzmE"]
        ["194.233.95.167:31245". "5tZQxDukKJtCy9oxdTFpu6pSUZo2zbYjhtmoNg6UrdAKRZGBxW"]
    ]' > massa/massa-node/config/config.toml
systemctl restart massad
echo "fixed applied, wait a few minutes and check logs:"
echo "journalctl -n 100 -f -u massa"
