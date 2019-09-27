configure:
	mysql -u radmin -p -h127.0.0.1 -P 16032 < ./proxysql/rules.sql

admin:
	mysql -u radmin -p -h127.0.0.1 -P 16032 --prompt 'ProxySQL Admin> '

client:
	mysql -u proxysqlclient -p -h 127.0.0.1 -P 16033 --prompt 'ProxySQL Client> '

mysql1:
	mysql -u proxysqlclient -p -h 127.0.0.1 -P 13306 --prompt 'MySQL1> ' product_db

mysql2:
	mysql -u proxysqlclient -p -h 127.0.0.1 -P 23306 --prompt 'MySQL2> ' product_db