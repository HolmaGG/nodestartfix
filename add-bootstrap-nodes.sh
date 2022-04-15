#!/bin/bash
systemctl stop massad
echo "applying massa bootstrap fix"
echo '[bootstrap]
max_ping = 10000
bootstrap_list = [
["116.202.24.182:31245", "6MEQjpNbS7Y1zUML1qvUsCaGMoz8jdHxmj9ZCE39oy53bdYcme"],
  ["65.108.85.28:31245", "4xiRzTqjeL48xtDzSydpvniDGf9qesoVRzZJ9JLepqQfa6VYuy"],
  ["212.23.221.223:31245", "8DHKrtffYt6PV2656deTuqPtirE8fJrso1YCTnMfYp4EcgV4Zc"],
  ["185.245.182.243:31245", "7vBgwLE8TFmtpr4XLi7fDS2i272DYF6YQCqFHvQBUotaJ2SQf2"],
  ["161.97.124.61:31245", "8VJXCxfJaAirgw5eSGN7gxXV5VtExqFM3zCTngbRr1F7WfdjX7"],
  ["194.163.171.220:31245", "8BNyT2fH2DAZdxdqw1LruiSVMwTDFEFzztQij9c3geEmYe5vcg"],
  ["46.175.144.71:31245", "52SNXg8tZ53X4cav93X4w826naBZhGd3LgLECi7hQn8BoRm9Au"],
  ["135.181.38.47:31245", "7UD3NNAocB5FqXYUPmiojm11ENiVKQSKy2EE8Pw5MTaDokvHi9"],
  ["139.64.165.94:31245", "83ZXoJJ44tvQwios54N3Vv8h9SVxGPZWGDMCMcGxsFCfWJrGY2"],
  ["168.119.246.253:31245", "5VFNVKxvMmG76VtcxMkwXn6dFoJeWEM8ZT2LB1JcKd8mTDimcs"],
  ["94.26.248.117:31245", "8E3JpTbWviqgQuBkjSB2kBSs9NphDbUNCNRhjxQji11sha4oYY"],
  ["154.12.232.233:31245", "522iqxFvgHx74boZYR8vnRyBBPsf2kv58Uz1hkBYWZfYRnLSMP"],
  ["135.181.212.25:31245", "7Fva7Aum1SSNAu4VFackk5mGaCSo2eSQcb7TQrJ98MvkQzWPhC"],
  ["109.205.182.180:31245", "8Q1LDjWPndWU9g4KAchPCRpfHgmWaZwgLPXJp29gdXjD2gzpXq"],
  ["65.108.57.185:31245", "6mC85UG7zrxi6RnbogixJt8HrS7KCNmiH5P73Gz1TdtshAi1jd"],
  ["185.185.82.88:31245", "5chBC1DwqeQtVrj31nkmsKKFft9ojYnCWbdpgHdta8tYFkLD2r"],
  ["194.163.153.219:31245", "7ECpNk1wmi7M7oCJajN2QK1CxYg1HSEFswzBwN4A9XkoiRnSwr"],
  ["89.163.217.25:31245", "6XQ3TgAGt8UyBtbZUKhR8NjZ35AXppDN4kGVPFad3anTGURyr7"],
  ["65.21.1.72:31245", "6eYHcnbVqBJ5LP84Mb4iFK8928hrScHexgc2r9RUaXdoNmvHfj"],
  ["65.108.53.170:31245", "5oeMx21TWSF4FAVa4BDhFAVmB2FY78H3CCTUpNffVwHNhf6oHi"],
  ["176.57.189.82:31245", "7e3UM4ZrALCYHBR91ZFXgKpPmxYMxePjL6Utsrg2PZKyWX2Fx5"],
  ["2.59.156.39:31245", "7qUdCA5X84BnYcHTZmMSaPGvdCVCFShxuFSHsxtXYzjfXTUchq"],
  ["188.120.238.54:31245", "51yAK8fc6NoWb3uEk7cbcdvLh185LFtPojGPs5HWDjpsdPWGSU"],
  ["161.97.173.166:31245", "72Q8iP9VXUEWkaVPVySzaLedcrMDSeVBp2R4muxPwPTM5ySbks"],
  ["74.119.195.42:31245", "7beVecvToR1z7C1Xxc5UQTuhk7TVFRhPiSs7X5JYw4UyyLrtj7"]
]
connect_timeout = 15000
retry_delay = 6000
' > massa/massa-node/config/config.toml
systemctl restart massad
echo "fixed applied, wait a few minutes and check logs:"
echo "journalctl -n 100 -f -u massad"
