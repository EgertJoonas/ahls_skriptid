#mysql paigaldusskript


#leiame muutuja
mysql=$(dpkg-query -W -f='${Status}' mysql-server 2>/dev/null | grep -c 'ok installed')

#kui mysql ei ole paigaldatud
if [ $mysql -eq 0 ]; then
        #annan teada kasutajale et installimine hakkab pihta
        echo "Paigaldan mysql ja vajalikud lisad"
        #installi mysql-serveri
        apt install mysql-server
        #konfigureerin seadistusfaili kodukaustas
        touch $HOME/.my.cnf
        echo "[client]" >> $HOME/.my.cnf
        #panen hostiks localhost
        echo "host = localhost" >> $HOME/.my.cnf
        #panen kasutajaks root
        echo "user = root" >> $HOME/.my.cnf
        #panen parooliks qwerty
        echo "password = qwerty" >> $HOME/.my.cnf
#kui mysql on juba paigaldatud
elif [ $mysql -eq 1 ]; then
        #annan teada kasutajale et mysql on juba paigaldatud ja käivitan
        echo "mysql server on juba paigaldatud"
        mysql
fi
#skripti lõpp
