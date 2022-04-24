#!/bin/bash
systemctl stop massad
echo "applying massa bootstrap fix"
echo '[bootstrap]
max_ping = 10000
bootstrap_list = [
  ["162.255.116.106:31245", "6d5iZT97anmY2AZSrAZV7zvZwLNzM2q4AnWptwGVBVWckt2BLw"],
  ["159.69.35.108:31245", "5Goi6cZWayAwYcWGjxXUUtC5gk65WoUPMe8vbotVVnJFSArkWw"],
  ["173.249.17.188:31245", "78nPorSNy5kiQyR9VVpXvGNNbueFwmgdzpBB6TJghbmRPkYooZ"],
  ["135.181.102.60:31245", "8b6SSaUUBGgeJobdZiC5UKmjUX1G7Lk5F8VxwvQkbfcM1qvEMK"],
  ["45.92.161.87:31245", "7uV6Ew9CSrCcr2GLBChr8T2B8wdmAC1zsVHTYTMFMB97mAcXVh"],
  ["62.171.160.43:31245", "6NkrSxhyBbKZuVRRVxxm8NaBBoBjGjvEdJTgNcMrsRChMg66FM"],
  ["68.183.138.62:31245", "5kS7f6GsrVMG7AAe1gN9FJiGw4Vjqz3xWtjtyUCzf5R4HuMjTw"],
  ["146.0.73.17:31245", "7nFBX1fdYFmTfoEYvsbQbWPB9krvgap6mnGyNBWdUxRK7iGM5a"],
  ["194.163.132.20:31245", "8fm8ZqWgtr7P6i2hrnRoSLTdNAd2QmDx87DZ2g9NRfaoQxbEhq"],
  ["162.55.92.101:31245", "61CoUwyVkhgmugRkRpxBRcqKn1rq37ZBSKXuT9iiirnt7agZ3P"],
  ["62.171.148.115:31245", "7Jjp6zoZiyRXVEX9sjuiA3HwqEQ2icgdu9qtKdF7wimZc3Pr1B"],
  ["185.252.215.167:31245", "5paLP9QB2WmJ9zd1MXWoaAVNbM2nrMDe3SgknnAjehTv2SNxFa"],
  ["43.133.27.211:31245", "5ZxfVz677gqAB9aNdGxxxiUuRqtXPNUnjmDiRAL1pvLHQRpitj"],
  ["176.57.184.238:31245", "8KNgJFdgfVqiCt5vuK9dxm5iVa23aQmQyPuSqrJvmqkUSv8tNa"],
  ["65.108.4.81:31245", "512LFzRXpMT62mecQT6irJrUiRFgWyv5pDLe61mifqYorvRApi"],
  ["188.166.248.98:31245", "5oFpnoSexawsFY2HomebyYU627t9z48zudPgZSAG4C4s8nCwJ9"],
  ["49.12.197.151:31245", "8kWTJ2kN1TZV9PHpcXb9Lo955ye3uvYDH9DTgYNh9yNWHQHQSk"],
  ["45.135.92.85:31245", "6TbeJVYaG6TQGoDsKCyP1Q3Tur2ZjYrebyvDLyShuUPpHLpNLk"],
  ["45.76.39.175:31245", "86mxvQVoVDePqK1EzJGaU6sqfRQ84ozhNKxebaGLuBcqEx4TuQ"],
  ["78.47.168.8:31245", "5mXXHh85kL1Q8EU1UAoR8xnZFkGfJ3b6LHJpHGb6wfkRJZmQTz"],
  ["185.173.37.71:31245", "89UmTYF8TwGGufYQshQTm9kbw1AYGvytiAdqgf5PXKbRSuAtsV"],
  ["185.128.105.98:31245", "7pp2aQQEsoc53xW2KwLGtcvMZTBun6TaDAMqPKFBfe2vhuKVTN"],
  ["65.108.244.199:31245", "89dm2a8LXaZ8v8yD4EfngNf8XmBrZZdC7RC7ozuUU8cNPhLz8B"],
  ["143.110.181.165:31245", "54BXjKQQFpQ7sxmu8XnSJHNt3NoWnxCd2HBxwZKRwF3wbGkX7B"],
  ["185.205.246.66:31245", "77JRUfxk6hNEoUth3EBaEKTrTSeaBBaVLn2eNAmS2Ec39kwAJo"],
]
connect_timeout = 20000
retry_delay = 9000
' > massa/massa-node/config/config.toml
systemctl restart massad
echo "fixed applied, wait a few minutes and check logs:"
echo "journalctl -n 100 -f -u massad"
