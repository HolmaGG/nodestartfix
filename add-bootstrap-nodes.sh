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
        ["51.250.24.36:31245", "5GtLpxnkvJz3CRENCxdwSoFTBciqGZMncBShV2TdAFLovhSv7F"],
        ["20.126.140.19:31245", "5cZk4KdxfHbowvjiTjvod8rUdfTantXjzYNpe9wDdEFerUVna5"],
        ["194.233.95.167:31245", "5tZQxDukKJtCy9oxdTFpu6pSUZo2zbYjhtmoNg6UrdAKRZGBxW"],
        ["149.202.86.103:31245", "5GcSNukkKePWpNSjx9STyoEZniJAN4U4EUzdsQyqhuP3WYf6nj"],
        ["149.202.89.125:31245", "5wDwi2GYPniGLzpDfKjXJrmHV3p1rLRmm4bQ9TUWNVkpYmd4Zm"],
        ["158.69.120.215:31245", "5QbsTjSoKzYc8uBbwPCap392CoMQfZ2jviyq492LZPpijctb9c"],
        ["158.69.23.120:31245", "8139kbee951YJdwK99odM7e6V3eW7XShCfX5E2ovG3b9qxqqrq"],
        ["195.2.67.16:31245", "6ZRfQBaZTWQ2Lqw6D6PzjhWoLnd9sYkEskA5c3mvSg5UFwLgw2"],
    ["46.44.1.91:31245", "7pfqfXkDGoYxavNjBKz2znvx8jADa66cue1Vza1UAuSsPZunws"],
    ]
    ]' > massa/massa-node/config/config.toml
systemctl restart massad
echo "fixed applied, wait a few minutes and check logs:"
echo "journalctl -n 100 -f -u massa"
