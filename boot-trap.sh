docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=fjds@TS2195" -p 1433:1433 -v /path/to/this/folder:/data -ti -d mcr.microsoft.com/mssql/server:2019-latest


## import from file to database 
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P fjds@TS2195 -i /data/script.sql

## exit database 
> quit
