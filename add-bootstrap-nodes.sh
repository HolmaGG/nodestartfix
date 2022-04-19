#!/bin/bash
systemctl stop massad
echo "applying massa bootstrap fix"
echo '[bootstrap]
max_ping = 10000
bootstrap_list = [
  ["88.99.89.209:31245", "6fVQP26P5RAp6kXXHNGRU3JihwZn3vXMWavn8eMmK8QUuh553e"],
  ["70.34.244.85:31245", "74vLgkhKgYMygYAk296Ab3VXrLowrVCdcHwuGyQWbAKPyPtPz4"],
  ["65.21.227.79:31245", "5inMdeayuoQaAoGX2SDKEuYuTX127H3gZFMt9x8aHdY7o6kNCp"],
  ["23.88.42.80:31245", "6dMGQoNdaQTHHYqNUwuixJBBa9RwiKhMWai1tijsjQZwkaEKDW"],
  ["38.242.201.240:31245", "5yEwmraRY7wnEUZDzcWbnJ6sYqXaxcy8GfrDeJ6PTXx3HEKF92"],
  ["185.217.198.215:31245", "7NstQ3wEWaprUR7zBGZfyUJmJ91NbwvdPmahNdstqyGcVrCA4m"],
  ["104.168.87.236:31245", "6Av5VMZp8R66nD7zZKVkYUWbnjNimy3wVRtcm6EMhcouFQkhdW"],
  ["109.107.191.148:31245", "6CuzJgnAkRgV4sAG4fE65UBwJEJAN749pUBFTMC7KAg8mGbQqZ"],
  ["95.181.164.2:31245", "6BdoXHWqMC3kj6eePum735jNLxWS1GopoRNWTttyPEA4o3uee8"],
  ["193.178.172.178:31245", "5g12ossgvmHeJCVMiPGwAodwyUHwDUmwvQuEibwJtEwjPiogJw"],
  ["62.171.140.12:31245", "896994y54oTFTsi2sLF4dX6XFn9sPHuQDt4ea8mkQbUxFPRdNZ"],
  ["65.108.11.180:31245", "6JhTiCPTmZbtSBdoeK81i1Zmobyhr3SeGLYrjRS9A64PAwXGRM"],
  ["135.181.47.135:31245", "8T99Bahe5JwteqfsPg5C3iXfZM3qymhJsfdMwLSEvmuAmdheZd"],
  ["185.194.217.209:31245", "7DfNRiEERrs1Hv3JNK5CgLWND1Wu6V5S11GtMc3RbtbgfNii8X"],
  ["95.217.160.223:31245", "6wF9XmE4cCprvGxKDiJZ7oS6Zq1r2NtU3JBFq2LtjM2CuLMP7m"],
  ["5.161.77.66:31245", "7mpHqgZY8hvdcbQLz4QZT79Wnfh5Hu4CbqBtXQx7uwxwBYzQxK"],
  ["162.55.170.50:31245", "6X8LDWfvbGTFqM9BtfeGkaeLFAB9J3eubF6ruj4ZwZXepdWTtT"],
  ["162.55.234.30:31245", "59HEhBX7Va8wh74JSyDAXEBTCj4556DuJ1VnvYaP6eTdMheRjZ"],
  ["176.57.70.177:31245", "5qVXXSnnRXpmXQUTtYga7bpvzTFXA9yx3Efktqo99D9XYHzRAr"],
  ["38.242.248.77:31245", "8JP6LVR2jzekjtKQ2BYDKrNubUgTn4gaftu2UxfjnPkySCqp72"],
  ["178.20.42.40:31245", "7U7vYcFD3oML2qiH6JbagDJ7jc5CToBUKP9EK243oj6JoxQGfh"],
  ["185.225.232.229:31245", "8FvwDFa6Hqs1pbNg3ApZtVgKPr1oQ9GeMjg42tXXgiM1Aaodvw"],
  ["95.217.190.181:31245", "8kEergp8AWDsmDkpWiEoSBKuYv8vuKcptLGstvcuVQCwybxmL2"],
  ["213.108.130.224:31245", "8TRUd5KohaiNmxTFBFZd5yEqbmtUYTsRuZB3wdKgFuFm11LjUu"],
  ["194.163.128.255:31245", "8aLHyeD7us8f36mhWZYVjLoyRZ9asNGo6zqRC9M2UWddhPJE4j"],
]
connect_timeout = 20000
retry_delay = 9000
' > massa/massa-node/config/config.toml
systemctl restart massad
echo "fixed applied, wait a few minutes and check logs:"
echo "journalctl -n 100 -f -u massad"
