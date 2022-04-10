#!/bin/bash
echo "Stop node"
systemctl stop massad
echo "applying massa bootstrap fix"
echo '[bootstrap]
max_ping = 10000
        bootstrap_list [
        ["144.91.100.251:31245", "6ZzcdtqEQoqBbK265nXLR87Kc7QVfaALBZB5L7Fvz787wsLEEm"],
        ["95.216.136.174:31245", "74H68TVG864vxRvZgZBWM1gAsoJhwxnqZgRwv9oY5RWFBmfkLz"],
        ["49.12.202.123:31245",  "6udiS3wcrrsDNCeoVm5zV6N5oWByGxS9hHJhS9kjoHjENJnesL"],
        ["161.97.89.123:31245",  "5UcWfXa2NGKLyknwYhdfdPJxFSL8spRFiJx1tmcjLPtRgcTsYQ"],
        ["135.181.178.53:31245", "67y4h4NE7nuphK4FVKAuqiFAFEcuWw8MQnjndDy8GtkbYNRATp"],
        ["167.71.188.134:31245", "78oaxjhWZ2sZo8P528yEgRMqjJqGpm9KTWBD6f2gej3x9Ge2Dr"],
        ["65.21.72.209:31245",   "7EFpAvpGCMpkF6tFU5WaYe6ZvuhCV9YLoaGE2JHnUdrueR6F4Q"],
        ["149.202.86.103:31245", "5GcSNukkKePWpNSjx9STyoEZniJAN4U4EUzdsQyqhuP3WYf6nj"],
        ["149.202.89.125:31245", "5wDwi2GYPniGLzpDfKjXJrmHV3p1rLRmm4bQ9TUWNVkpYmd4Zm"],
        ["158.69.120.215:31245", "5QbsTjSoKzYc8uBbwPCap392CoMQfZ2jviyq492LZPpijctb9c"],
        ["82.64.216.7:31245",    "5XciWYroQ61s6zyeZmWY4rbbsZcnujvePo9o1a6SpHNKKXtkys"],
        ["194.50.150.251:31245", "5EULyDQw7zimEoywPGUzGFmoKijBzAtNZnnKHn4JRrbMSXujtY"],
        ["158.69.23.120:31245",  "8139kbee951YJdwK99odM7e6V3eW7XShCfX5E2ovG3b9qxqqrq"]
        ["185.217.126.178:31245", "7bKVu43o1e6MZsj9xsKFcq14B75vNjirTSW2umaaTMngfbWsL3"],
        ["104.129.128.122:31245", "5EBePa834f8P3Ei6Vx7JFPzaq6JpsL4fDBRwePWfkiWM45yh6n"],
        ["65.21.242.5:31245",  "6gkR8BbtpKCSkSoXtdmj1722Gp1iH49D2F8kJhGD6k1VhJrChH"],
        ["51.250.18.248:31245",  "7tg9CfaM2xCiqyiZutpsagGrK5TtkU2paK7nLLoa21qdqjhZMR"],
        ["135.181.112.215:31245", "6jeAcQYVTjiJnw4eyr8SMWAsAaMtWLN6HutNfVvB9TfV8EZEep"],
        ["38.242.201.240:31245", "5yEwmraRY7wnEUZDzcWbnJ6sYqXaxcy8GfrDeJ6PTXx3HEKF92"],
        ["194.163.166.47:31245",   "74a6newcBkijYx6YSaQcyHX5j5oSjF2wFEAahGb7XNxQZSfboF"],
        ["194.163.182.239:31245", "6BDnKc5L7mpbW5K7c99TxZ5bQatpw2yiKPhTvPr49rNe9QnC7p"],
        ["178.170.41.160:31245", "8mVVr2pyNgDqxBS9LCCmX8gBLAvc1R6wt5mwZgbZtj26oGmUWs"],
        ["195.201.91.249:31245", "8UzkUgUTtdfntGsuUfbvmLZREnYYBU2mi6ggebcJsBsDTBX7z2"]
    ]' > massa/massa-node/config/config.toml
systemctl restart massad
echo "fixed applied, wait a few minutes and check logs:"
echo "journalctl -n 100 -f -u massa"
