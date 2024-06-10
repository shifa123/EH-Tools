waybackurls $1 | grep '=' |sed 's/=.*/=/g' | sort -u | uniq | tee $1-p.txt && katana -u "$1" | grep '=' |sed 's/=.*/=/g' | tee $1-a.txt && cat $1-p.txt $1-a.txt | sort -u | uniq | tee $1-combined.txt

