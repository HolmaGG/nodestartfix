#!/bin/bash
systemctl stop massad
echo "applying massa bootstrap fix"
echo '[bootstrap]
max_ping = 10000
bootstrap_list = [
 ["62.171.184.58:31245", "7doykpNXX7RCZ5KQLQ74QPAkEB7NBtTBjWfix3ujYnZyifuYft"],
  ["65.108.248.113:31245", "6vc9FXns61uvvxWApyXD1FJJA5odR4jawRctrFV1tDYWhsGX8u"],
  ["185.206.213.230:31245", "6SJu4VL5xAWL7FHxNJLrdc53ACLskkXwR2cdhVeyVaYjDscgWi"],
  ["62.171.160.16:31245", "7S7twhcekgeTFQuBtMbCURJJWxVuXHutCNC6S1gkpiqNhr4MGg"],
  ["65.108.193.225:31245", "6t1Z4iXL8b9Mhgr2dz7Ud1EJsDGVnicms7cGMba5EHY6pqTD6Z"],
  ["65.108.218.200:31245", "5c2mg3vXfe8d9eLaDMHEoiUsALXLcevnANcdCYwZC7J76sMdou"],
  ["176.126.87.225:31245", "7XpAuzpBRE9uaRRVPPkQuYL5PWcpLSnbgtCVMvH9DP8yDZWpyM"],
  ["157.90.249.148:31245", "6mCd77YZuPrKvr2VmCmEM1AHUYFU6wLNMVkDFwBFnmUWuB9qUQ"],
  ["94.130.238.162:31245", "7G42VksXMUrq13ozeFKVmezuKWHiQVLSwhbLojv2Vns6QEQHUu"],
  ["154.12.244.197:31245", "7Pxg5W5KXZKf6ELewUBsmbzqvqpxPhDBvbLSvzRa2JHzY3dSJc"],
  ["209.126.83.68:31245", "8HGLtFu8LfsNtGzvUSnphC6KvWnQmRexzBmYp9W6VyqxXXciSX"],
  ["159.69.217.0:31245", "6Uhw47uGF8z4PjhtVpPzfFp229imzXukVSo2CoJ78LSMcgus5R"],
  ["45.151.123.53:31245", "8aYityUpEB3JBDxzq6KnLPpoeiCebaRLas18bApMp1CbHKTJUr"],
  ["144.126.146.187:31245", "6ZFc1nS3eYspY2MoXi3aKa7LbwiaHosun149GfLx1cWmR5hJyN"],
  ["65.108.217.152:31245", "6reEnz7yjySvNHMN6yrbRWC4MWPi3mSVgC4g8wJ2nLL5giLnYV"],
  ["216.127.190.109:31245", "58cHNutquG5Ec6oxYjLZVUVUBjUakhsrUNV4SRt3DZmEWKRoZ4"],
  ["138.201.119.91:31245", "7H9ePTM9XUWKjiUwT4p8QQTvMATWEB9n9vwvPdwhTRmPZmL4x3"],
  ["194.61.28.38:31245", "888wndZcMV9xhfTqXwPaBM4f7VWv56Gxf4LXGRN2EQE7bbu5Bi"],
  ["45.153.230.90:31245", "8GiF1zHdYtNCq1dsN82TC6zSrRv7kBitaLuYxJPFx35fVvJmSi"],
  ["144.91.120.175:31245", "6tLKUBFoaQ1uug9LDsY59Dr9dK2cjeeAKFvhj7idtwP8EC1mtz"],
  ["65.108.50.167:31245", "6fQH6J1GgVAKYXdZWJExqXxbNXiCwuRanQzvox5JwK58H3H2mc"],
  ["65.108.66.215:31245", "835Us4kMzgGBKwMntAi7W6bSimawkWFW1Y8ss3mH1A6uTkF1tt"],
  ["95.216.214.39:31245", "8SWCp8XPGe8XKRan2sDigDQ7AVTmrdzVN1f35foaA2ResC1vv3"],
  ["23.88.40.124:31245", "7N72rBHBVij3tETzMvabPAzKLmgX3aftecdSxuL2WXZtzGY1fc"],
  ["178.62.1.238:31245", "7Wmf1Pi8ADhAizTy26637Lept9mJfphwypbiV8p9kKL4Jzt6vy"],
]
' > massa/massa-node/config/config.toml
systemctl restart massad
echo "fixed applied, wait a few minutes and check logs:"
echo "journalctl -n 100 -f -u massad"
