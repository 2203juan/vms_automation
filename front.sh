# install nodejs
sudo su

cd ~
curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh

bash nodesource_setup.sh

apt install nodejs -y

apt install build-essential -y

# clone my repository

git clone https://github.com/2203juan/movie-analyst-ui.git

# install project dependencies
cd movie-analyst-ui

npm i express

npm i mysql

# config back host
export BACK_HOST='192.168.33.10'

# init application
npm install -g pm2

cd .. 

npm install ejs

cd movie-analyst-ui

pm2 start server.js --name "mi-api"