#php paigaldusskript

#leiame muutuja skripti jaoks
php=$(dpkg-query -W -f='$(Status)' php7.0 2>/dev/null | grep -c 'ok installed')
#kui php ei ole installitud:
if [ $php -eq 0 ]; then
        #anname kasutajale teada et paigaldus hakkab pihta
        echo "Paigaldame php ja lisad"
        #installime php ja lisad
        apt install php7.0 libapache2-mod-php7.0 php7.0-mysql
        #anname kasutajale teada et paigaldus on lõppenud
        echo "php on paigaldatud"
#kui php on installitud:
elif [ $php -eq 1 ]; then
        #anname kasutajale teada et php on juba paigaldatud ja mis versioon
        echo "php on juba paigaldatud"
        which php

fi
#skripti lõpp
