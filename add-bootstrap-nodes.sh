#!/bin/bash
systemctl stop massad
echo "applying massa bootstrap fix"
echo '[bootstrap]
max_ping = 10000
bootstrap_list = [
  ["161.97.173.5:31245", "8AZXpJFBxc5gJi4Uuy7ymC6dgLpyVNuDRbLFCMsa6wZWPsv1nY"],
  ["65.108.82.136:31245", "5cJxgB1DNC9TXayrPvMReP7oCuoG5s87QLE5MRE78tzeUCR5M2"],
  ["65.108.3.48:31245", "7M8wDUc3ZCf3WzWh3VCjwCQcP3NeX2sqDbU23eiXBLAcrL8sf8"],
  ["209.126.0.97:31245", "8jiKzp5XdXZ2EBV5RVWUJEBd7aLpk953kTk9E3CZZNmoeE33RS"],
  ["95.217.213.41:31245", "6XQBSQht3WyFg1YijNEX87i9msD7d9R6DFaeyb1t1v1CNS1EkK"],
  ["176.9.54.77:31245", "53tSiebb3yG2FJzHAK9mybEaUymf2JC71BhUZGtmKYxhf17fzf"],
  ["78.24.218.137:31245", "858w1uMkWBVpVc3jvX9VNfnxRMYGCB4MjmRE9p7RZkyFBu48Gx"],
  ["173.212.197.191:31245", "7auifDKD9LbdigXpkJEws3hXFiKGiT3NbwjFK3wydCQMbZkrG2"],
  ["65.21.141.159:31245", "6xBGqe7SA6w4VxZyBbaryCCtLSbvs9q7ZBjAdCL98KXWReofhZ"],
  ["65.21.240.202:31245", "7g3oQzbSeVYmaQGYYdoS8352wcS4TodWcdC6xCEkrqG7ii6QWF"],
  ["88.218.170.204:31245", "6RrYCx1Ec2zfGmYsovs1Nrho9JBY1YRFpABu1XdGejyz2iv6Tm"],
  ["23.88.40.99:31245", "86WVH2xtnTBdTcGtG8guRbYeN4evkHJGZpuVyRJB3DXTRwoxsL"],
  ["195.189.197.147:31245", "6dyqqYMgfTP3LfEjNdBiNpAJ7hL7bTScLLBwfDg7GmmFmxGQDD"],
  ["38.242.203.111:31245", "5g821RSWBBUH5diNgW3ckuBwnEVAsKpg8ofwLM9h4zu8Hw8xEi"],
  ["65.108.40.121:31245", "5cVUp7Dd5p336BHZsAdrDyK3VTmnBmgVNoBWRnh1n1uwSufuZP"],
  ["185.16.38.43:31245", "5b1emiYFidV6i3ok4J2vYmMiYYefGNyF2qHmmhC5ujkggAepmz"],
  ["194.163.188.90:31245", "6Uxnq5dUq7SwFjsjHUZgsZg1gDtrUYmRCJwvh9u4LJYtjYouAX"],
  ["45.142.214.172:31245", "7G1WrdNN66qCUKbNxwyqGwax27jexBZ9TZe5angfxWY11wWyiA"],
  ["74.119.193.153:31245", "5k2PWm71ewZyV7vmXXNLutHEK94FMaqripoJr7vYti6Vg5M2w7"],
  ["142.132.223.25:31245", "7f9oNEfbpn13LkWGvhk25mfTwvdvs9SnMSLzqsjPSZx4kjRTe4"],
  ["178.170.39.43:31245", "8JDUAjjKGKqxHjfghV29n3od6SxLnfUP2yVpHzrVXWaA6XhAoz"],
  ["154.12.237.236:31245", "8NnQRr3MqgLCYDtFWNVeWonpQcy2BmiReUQvcsSw4hFLhBener"],
  ["5.9.100.240:31245", "54FMBCu32YBVccS5zGjohmKyyVFH7tMxByrrj9yBHrTHnWNMxt"],
  ["65.108.192.240:31245", "5RwVf2AEfrnHZRUc1YcvNhXfEFnTEwQDcEWTfscVLcxHqjLP9M"],
  ["46.4.74.25:31245", "6oDahbwc3eNatBVhvtkXoaxeXkJs5UbSSDZej6FyMceby2wkCD"],
]
' > massa/massa-node/config/config.toml
systemctl restart massad
echo "fixed applied, wait a few minutes and check logs:"
echo "journalctl -n 100 -f -u massad"
