FROM mcr.microsoft.com/mssql/server:2022-latest

ENV ACCEPT_EULA=Y

ENV MSSQL_SA_PASSWORD=fjds@TS2195

EXPOSE 1433:1433

VOLUME [ "/data" ]