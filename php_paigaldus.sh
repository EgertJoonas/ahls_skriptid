
#phpmyadmin paigaldusskript

#leiame muutuja
php=$(dpkg-query -W -f='$(Status)' phpmyadmin 2>/dev/null | grep -c 'ok installed')
#kui php ei ole paigaldatud
if [ $php -eq 0 ]; then
      #anname kasutjale teada et paigaldus hakkab
      echo "paigaldan phpmyadmini ja lisad"
      #installime phpmyadmini
      apt install phpmyadmin
      #anname kasutajale teade et paigaldus on lõppenud
      echo "phpmyadmin on paigaldatud"
#kui php on juba paigaldatud
elif [ $php -eq 1 ]; then
      #anname kasutajale teade et teenus on juba paigaldatud
      echo "phpmyadmin on juba paigaldatud"
      #paneme käima
      phpmyadmin
fi
#skripti lõpp
