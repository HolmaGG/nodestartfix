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
["149.202.86.103:31245", "5GcSNukkKePWpNSjx9STyoEZniJAN4U4EUzdsQyqhuP3WYf6nj"],
        ["149.202.89.125:31245", "5wDwi2GYPniGLzpDfKjXJrmHV3p1rLRmm4bQ9TUWNVkpYmd4Zm"],
        ["158.69.120.215:31245", "5QbsTjSoKzYc8uBbwPCap392CoMQfZ2jviyq492LZPpijctb9c"],
        ["158.69.23.120:31245", "8139kbee951YJdwK99odM7e6V3eW7XShCfX5E2ovG3b9qxqqrq"],
        ["65.108.14.245:31245", "8KKWHVJd2LKeVBNmYVEnX2mcwm7aQ3onsaR9fyETjgCB4uiQTs"],
        ["94.156.93.150:31245", "6FK8yGC1uQiTYdq4GfK8aNdC8MbLjfLzc5SaAwJ4snxsSDJsSU"],
        ["5.188.88.251:31245", "6Pwd4zQ3MMHp8vDRdwJhBRShD9dB6DTSHbJx1sHK2yLBorV7fC"],
        ["147.182.139.198:31245", "4zDLAs5zSfnS5VkBRUpwggNzVzkKT1eRH1gFdsHuYEh2GP9PZA"],
        ["89.108.71.233:31245", "5rDHwG5hnaneMc1j3mWitzf7bXTwDThFkKeHbLJchQnaCmN5yS"],
        ["49.12.44.71:31245", "6WQsWWF4D5rATBMtnUhuRLPxRkjoZNqqV2vwScDuvyBxCcm1mf"],
        ["94.140.249.153:31245", "71NRk5K5qk77LsgZcQ69PGQaWwT8AH8xwSitz2usZBvwDmVo8S"],
        ["109.205.181.58:31245", "7F5WDunitHr7Qcvj1QAiqg9WeNvpwe8X4475TgPhqd59jy1Zak"],
        ["5.161.97.72:31245", "5u15ahYe7AWBYbFdLzGt8wm9UCtTVS4SX8EMKQfY9hGQYXkihQ"],
        ["194.233.87.52:31245", "8ZzcuJvfAmqXsA22kNV7TbeysASAvCzjPGG6kQZJQuvJeL7miL"],
        ["45.150.67.107:31245", "8dq8YNHqUaSLZPasVWQj6QjSotrsDrygxYvphWE1FnKtVi8vDB"],
        ["94.124.78.102:31245", "88gDnfVSyevm4byHHK5Ec2XZqsgomzt412Pscr7Ea1TmY8oQT7"],
        ["194.163.171.44:31245", "8btkw4aVuj3HYVeg1AwPpD1wYFRPVp3Y5aEdcfEESFTjfhEVLB"],
        ["62.141.44.130:31245", "7FFSm1whXfTr46qVy3oTr1u1VPhCGVNa2yzJ7zwD16mqgoe2aR"],
]
connect_timeout = 15000
retry_delay = 60000
' > massa/massa-node/config/config.toml
systemctl restart massad
echo "fixed applied, wait a few minutes and check logs:"
echo "journalctl -n 100 -f -u massad"
