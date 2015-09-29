# cf-config-broker

Steps for installation:

1. git clone https://github.com/ingydotnet/cf-config-broker/cf-config-broker.git
2. cd cf-config-broker
3. make build
4. edit the cf-broker-config.json file
4. make run

To use the broker:

1. create service instance for each flavor
   helion create-service mssql mssql-db
2. bind service to the application
   helion bind-service oracle-db go-env

