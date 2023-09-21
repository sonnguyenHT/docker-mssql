docker run  -v /path/to/this/folder:/data -ti -d sonnguyen129/mssql-server-2022


## import from file to database 
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P fjds@TS2195 -i /data/script.sql

## exit database 
> quit
