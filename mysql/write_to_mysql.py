import os
import sys
import logging
import pymysql


rds_host  = os.environ['mysql_hostname']
name = os.environ['mysql_username']
password = os.environ['mysql_password']
db_name = os.environ['db_name_mysql']
# port_number = os.environ['mysql_port_number']

logger = logging.getLogger()
logger.setLevel(logging.INFO)

try:
    conn = pymysql.connect(host=rds_host, user=name, passwd=password, db=db_name, connect_timeout=5, port=6603)
except pymysql.MySQLError as e:
    logger.error("ERROR: Unexpected error: Could not connect to MySQL instance.")
    logger.error(e)
    sys.exit()

logger.info("SUCCESS: Connection to MySQL instance succeeded")

item_count = 0

with conn.cursor() as cur:
    cur.execute("drop table IF EXISTS sandbox.Employee")
    cur.execute("create table Employee (EmpID  int NOT NULL AUTO_INCREMENT, Name varchar(255) NOT NULL, PRIMARY KEY (EmpID))")
    cur.execute('insert into Employee (Name) values("Joe")')
    cur.execute('insert into Employee (Name) values("Bob")')
    cur.execute('insert into Employee (Name) values("Mary")')
       
    conn.commit()
    cur.execute("select EmpID, Name from sandbox.Employee LIMIT 1;")
for row in cur:
    item_count += 1
        
        
logger.info(row)
# print(row)
conn.commit()
     
    
logger.info("Added %d items from MySQL table" %(item_count))