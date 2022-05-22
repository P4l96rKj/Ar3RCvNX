##!/bin/bash
CHINADNS=tls://223.5.5.5
LIST="$(dirname $0)/dnsrule.txt"
cat <<EOF > ${LIST}
tls://8.8.8.8
tls://185.222.222.222
https://i.passcloud.xyz/dns-query
EOF
curl -s https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/accelerated-domains.china.conf | sed -E "s#server=(\/.+\/)114\.114\.114\.114#[\1]${CHINADNS}#g" >> ${LIST}
