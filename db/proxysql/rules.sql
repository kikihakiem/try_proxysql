INSERT INTO mysql_users (username, password, active, default_hostgroup, default_schema) VALUES ('proxysqlclient', 'test', 1, 10, 'product_db');
LOAD MYSQL USERS TO RUNTIME;SAVE MYSQL USERS TO DISK;

INSERT INTO mysql_servers (hostname, hostgroup_id, port, weight) VALUES ('mysql1', 10, 3306, 100);
INSERT INTO mysql_servers (hostname, hostgroup_id, port, weight) VALUES ('mysql2', 20, 3306, 100);
LOAD MYSQL SERVERS TO RUNTIME; SAVE MYSQL SERVERS TO DISK;

INSERT INTO mysql_query_rules (rule_id, active, username, match_pattern, destination_hostgroup, apply) VALUES (1, 1, 'proxysqlclient', "\/\*\s*use_read_replica\s*\*.", 20, 0);
LOAD MYSQL QUERY RULES TO RUNTIME;SAVE MYSQL QUERY RULES TO DISK;
