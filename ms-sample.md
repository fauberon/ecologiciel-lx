az postgres up --resource-group rg-rub1-dev --location francecentral --server-name pgsql-rub1-dev --database-name sampledb --admin-user smacpostgres --admin-password postgresSmac01 --ssl-enforcement Enabled

export DB_HOST=pgsql-rub1-dev.postgres.database.azure.com
export DB_DATABASE=sampledb 
export DB_USERNAME=smacpostgres@pgsql-rub1-dev
export DB_PASSWORD=postgresSmac01

Env key
706f612092a8ff141af9230c2c72318ce90fa682e32f43aef9dd5817bd7a7670762862c92cf308a81a6dc699b0ad9e87e154dc498c56b32b363f475275431c68

az appservice plan create --name app-rub1-dev --resource-group rg-rub1-dev --sku FREE --is-linux

az webapp create --resource-group rg-rub1-dev --plan plan-ecologciel-F1 --name app-rub1-dev --runtime 'RUBY|2.6.2' --deployment-local-git
