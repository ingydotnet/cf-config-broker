# cf-config-broker

Steps for installation:

You will need to have Go and Git installed. Your `GO_ROOT` env variable should
be set, but you don't need `GO_PATH` or `GO_BIN`. The Makefile will set this
all up locally.

ie In contrast to normal Go building, all you need to do is clone the repo
anywhere you want and run `make build`. The Go layout specifics will be
handled for you.

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

# Repo File Layout

* `Makefile` -- Automation: `make clean build run`
* `config/`, `main.go` -- Go source code
* `manifest.yml`, `Procfile` -- Files for deploying the broker as a Stackato app
* `cf-config-broker.json` -- Broker config file (edit this to your needs)
* `README.md` -- Project overview
* `note/` -- Extra note files
