#!/bin/bash
echo "Stop node"
systemctl stop massad
echo "applying massa bootstrap fix"
echo '[bootstrap]
max_ping = 10000
        bootstrap_list = [
        ["194.233.95.166:31245", "6eixWUbvxSTBDReVjUPzFc2yp7HT5k2KsAENkf1YeBAJ2vwzmE"],
        ["89.163.164.30:31245", "8AjbW1cWXATX73DvZenTECrwq2vtn5KubeeJgewjpGxQyz77uu"],
        ["185.190.143.117:31245", "4xRnZS68hteMmQ4o37hqqa3T3wzhRHWxk2zTUjDjgNf9kZfUwc"],
        ["149.202.69.198:31245", "5GtiNdc8Nbn7YnCXAoP5yhAWc9ytPsqQyeabaHr5xBbZuWEXGN"],
        ["178.170.40.141:31245", "6VMWEkJ6oSeJMdBaFqKasKHkYmD1r4EEGZ4deea9jobQC6Kn7N"],
        ["159.69.185.245:31245", "7vsH2KS8gJsYj4W3gvRDibSEhrBvbaV8jbPHD4GtX4gzXBGHX5"],
        ["51.250.24.36:31245", "5GtLpxnkvJz3CRENCxdwSoFTBciqGZMncBShV2TdAFLovhSv7F"]
        ["194.233.95.167:31245", "5tZQxDukKJtCy9oxdTFpu6pSUZo2zbYjhtmoNg6UrdAKRZGBxW"]
    ]' > massa/massa-node/config/config.toml
systemctl restart massad
echo "fixed applied, wait a few minutes and check logs:"
echo "journalctl -n 100 -f -u massa"
