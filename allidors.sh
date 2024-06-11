cat $1 | grep "=" | grep -E '[0-9]' | sort -u | uniq | grep -Ev 'js|css|png|tiff|jpg|jpeg|audio|mp3'
