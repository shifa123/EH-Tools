waybackurls $1 | grep '=' | sed 's/\["//g'| sed 's/"\],//g' | sed 's/=.*/=batman"<>/g'|sort -u | uniq |while read host do;do curl -sk "$host"|grep 'batman"<>' && echo $host "\e[31mXSS Found\e[0m";done
