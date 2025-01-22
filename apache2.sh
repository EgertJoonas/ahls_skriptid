
#apache paigaldamisskript

#Siin saame teada, kas apache on juba paigladatud või mitte
apache=$(dpkg-query -W -f='$(status)' apache2 2>/dev/null | grep -c 'ok installed')

#kui ei ole paigaldatud, siis installime
if [ $apache -eq 0 ]; then
       echo "Paigaldan apache2"
       apt install apache2
       echo "Apache on paigaldatud"
elif [ $apache -eq 1 ]; then
       #kui on juba paigaldatud, siis paneme käima ja näitame staatust
       echo "apache2 on juba paigaldatud"
       service apache2 start
       service apache2 status
#lõpp
fi
