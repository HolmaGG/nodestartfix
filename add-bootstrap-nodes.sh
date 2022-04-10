#!/bin/bash
echo "Stop node"
systemctl stop massad
echo "applying massa bootstrap fix"
echo '[bootstrap]
max_ping = 10000
bootstrap_list = [
["178.62.202.206:31245", "6BTVgJHnsfwy2f9KJpVPAzH5wDoGmYJDnJSTygwTqEuU8mU4Q9"],
["194.156.79.23:31245", "6uscLLig9FnKqL8vHpSJMNLPH3Ud6EAWLs4zvNduP2uwihPHLb"],
["135.181.94.227:31245", "5QaGb69Q2DDwnDcb7cWRrsBzjgY6XsqyGTZUMrL7fuZe5u9Rq7"],
["167.99.209.179:31245", "7sVgP8eoJ4pCzVEE9Hb1NHt6yqdKR3t5aujc3r2nkJSUkQtLwi"],
["194.233.84.224:31245", "87kJjGam2JqL84seerUpQmkxSjinzufkKyt7wFyLeqp5nxS8MA"],
["192.248.163.223:31245","7waqbYdu1V3VvtxtvoncymdLvQcVPYQQUMJfF6c1yiKih28DWD"],
["65.108.49.22:31245", "8gfAXWTyyA8dT51ukX2xtbu2jrTr9yPYK3k856yq7Hk4sm4ArC"],
["144.91.100.251:31245", "6ZzcdtqEQoqBbK265nXLR87Kc7QVfaALBZB5L7Fvz787wsLEEm"],
["65.21.72.209:31245",  "7EFpAvpGCMpkF6tFU5WaYe6ZvuhCV9YLoaGE2JHnUdrueR6F4Q"],
        ["149.202.86.103:31245", "5GcSNukkKePWpNSjx9STyoEZniJAN4U4EUzdsQyqhuP3WYf6nj"],
        ["149.202.89.125:31245", "5wDwi2GYPniGLzpDfKjXJrmHV3p1rLRmm4bQ9TUWNVkpYmd4Zm"],
        ["158.69.120.215:31245", "5QbsTjSoKzYc8uBbwPCap392CoMQfZ2jviyq492LZPpijctb9c"],
        ["82.64.216.7:31245",  "5XciWYroQ61s6zyeZmWY4rbbsZcnujvePo9o1a6SpHNKKXtkys"],
        ["194.50.150.251:31245", "5EULyDQw7zimEoywPGUzGFmoKijBzAtNZnnKHn4JRrbMSXujtY"],
        ["158.69.23.120:31245",  "8139kbee951YJdwK99odM7e6V3eW7XShCfX5E2ovG3b9qxqqrq"]
        ["185.217.126.178:31245", "7bKVu43o1e6MZsj9xsKFcq14B75vNjirTSW2umaaTMngfbWsL3"],
        ["104.129.128.122:31245", "5EBePa834f8P3Ei6Vx7JFPzaq6JpsL4fDBRwePWfkiWM45yh6n"],
         
]
' > massa/massa-node/config/config.toml
systemctl restart massad
echo "fixed applied, wait a few minutes and check logs:"
echo "journalctl -n 100 -f -u massad"
