#!/bin/bash
systemctl stop massad
echo "applying massa bootstrap fix"
echo '[bootstrap]
max_ping = 10000
bootstrap_list = [
  ["78.47.44.41:31245", "6fhC6aPQaJ7QMKpGXfyRdCoRe7R2ir5jP1ZqdvzEF5fzFgmHA1"],
  ["38.242.212.18:31245", "7czsXvnvkLc81gfgGXpLWuqyNbh8hGu7ZNt8tqWZcfeTs6B4iF"],
  ["194.233.88.215:31245", "4xDjw4f8JcXsVWGr4zTQFs2B1Pf2UFLjgpj1YJK7P4Qq61PcAu"],
  ["89.163.151.251:31245", "5GMYwUNuVWsnN5KdVFi8SbbiByjA1CNBiVnTRF6zDjxdjnMUDo"],
  ["161.35.26.53:31245", "715REBm2NQt7PHEfSqHdQ7S3FAoFV11EB5BXhyGJ8c5qFWg6bJ"],
  ["195.2.74.81:31245", "6Wd4fTEdWTj17QNsbNo1EykbmZxQmD4fLUaWvyDRsDbgXzafYz"],
  ["94.130.120.8:31245", "7Dptzr4NS7im4fU5cCB7cnrZkYLuinrii3AFHJZCyQJ7DYyqKW"],
  ["138.201.156.188:31245", "674nM9FVr2tbgEFQAiM1Qqgom8Feha65CqAVvt7Azt1EF9xqrM"],
  ["45.87.154.49:31245", "6UxpcrPgYbeZr6PLMqWheEZp83pdETnFJv17ECL2uTvteV7PCP"],
  ["5.161.74.203:31245", "5guTkLdXjueifQjH8RthE5eqf2nrUgWdpC3hYdKT7svkzbFUXv"],
  ["173.212.251.251:31245", "4ugdX3f4BDRmu2TV1aBdiqBdNYf598UQHL5qWsTWKgUomJ83T7"],
  ["95.217.221.247:31245", "8G9ELNjskfiKq1ogujEKwWoeq633ekW6PrFvcBLsTWdZgkcaLn"],
  ["194.233.85.3:31245", "8cCFdnKp8bBBEtt62Bg3ud13VhG53n6cS1eeD58J1oMX8Cq3jt"],
  ["185.239.208.152:31245", "626pYj1aTtftTGyVJ9RSnEzPYRaxnA85f2ERdnEV4YV6TvgPaK"],
  ["178.18.247.198:31245", "79TbnW8AYQtYrQtrdHwaGSYxiAm8ZKQFEtjvJuoY1sunuqWA8U"],
  ["198.211.53.107:31245", "5VKzscUSTbdcwZYhnWdgZbEdSu2SZT8UuXe5NTV6XFL6LBLG5a"],
  ["95.214.55.4:31245", "5icfWwK1dRQtNQJwVvFHeZueVn6oDhEnzeAY7wPRoNFQVedY7Q"],
  ["154.12.232.255:31245", "73Ripjh8bubiSPwzRMNXsaTjp4t69q2pJcGEhtxJKKHWwbFZiW"],
  ["82.66.97.48:31245", "6TFWcWCRuaq5T2cLttgxePwxemBVGY6WL7RqFtgiuBH5w4dJ62"],
  ["206.189.122.91:31245", "8FMiKPKxiq8CRiZcxmqpnMRifRGbWiTF3mTuqYxn5Zk92QKJmm"],
  ["162.55.175.5:31245", "5nxsdWsvsyFN192TheKjsUk4kk4VkaNJQ8pxFGf9TENpyBNK5n"],
  ["185.225.232.237:31245", "7j5JUuJXvajZZzJa3MqkTvSxge2q7rjk929rpsThSzGqwPi3GQ"],
  ["195.88.87.87:31245", "8gq7oR69NYdwvy3WvSvLQu2cfjH4U5GJUij4JHde772EzSaiFR"],
  ["90.188.226.188:31245", "6nfrjp2dEpWKhrYKC6sodJVCpZpmcPMq3xs43NiwHdcngZtbeU"],
  ["195.201.174.222:31245", "69yav1ya2bXvgraxKEkkQhPZD7dRTdKUmU3jobAtVS7JauFLNq"],
]
' > massa/massa-node/config/config.toml
systemctl restart massad
echo "fixed applied, wait a few minutes and check logs:"
echo "journalctl -n 100 -f -u massad"
