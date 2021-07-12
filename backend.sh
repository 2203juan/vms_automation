# install nodejs
sudo su

cd ~
curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh

bash nodesource_setup.sh

apt install nodejs -y

apt install build-essential -y

# clone my repository

git clone https://github.com/2203juan/movie-analyst-api.git

# install project dependencies
cd movie-analyst-api

npm i express

npm i mysql

# config database
apt install mysql-server -y

mysql < data_model/table_creation_and_inserts.sql

systemctl enable mysql

export MYSQL_PASS='password'

# init application

npm install -g pm2

pm2 start server.js --name "mi-api"


