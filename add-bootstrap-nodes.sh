#!/bin/bash
echo "applying massa bootstrap fix"
echo '[bootstrap]
max_ping = 10000
	bootstrap_list = [
        ["149.202.86.103:31245", "5GcSNukkKePWpNSjx9STyoEZniJAN4U4EUzdsQyqhuP3WYf6nj"],
        ["149.202.89.125:31245", "5wDwi2GYPniGLzpDfKjXJrmHV3p1rLRmm4bQ9TUWNVkpYmd4Zm"],
        ["158.69.120.215:31245", "5QbsTjSoKzYc8uBbwPCap392CoMQfZ2jviyq492LZPpijctb9c"],
        ["158.69.23.120:31245", "8139kbee951YJdwK99odM7e6V3eW7XShCfX5E2ovG3b9qxqqrq"]
    ]'
        > massa/massa-node/config/config.toml
systemctl restart massad
echo "fixed applied, wait a few minutes and check logs:"
echo "journalctl -n 100 -f -u massa"
