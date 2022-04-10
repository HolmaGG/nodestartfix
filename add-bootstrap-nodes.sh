#!/bin/bash
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
]
connect_timeout = 15000
retry_delay = 600000
' > massa/massa-node/config/config.toml
systemctl restart massad
echo "fixed applied, wait a few minutes and check logs:"
echo "journalctl -n 100 -f -u massad"
