#!/bin/bash
sudo apt update
# sudo apt install nano
# chmod +x tool.sh
sudo apt install mysql-server

# Config user mysql  
sudo mysql

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '123456'; #change pass
GRANT ALL PRIVILEGES ON  *.*  TO 'root'@'localhost' WITH GRANT OPTION;            # provide role
# sudo mysql -u root -p
CREATE USER 'sangnd'@'%' IDENTIFIED  WITH mysql_native_password  BY '123456';
GRANT ALL PRIVILEGES ON *.* TO 'sangnd'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
exit

# Access remote 
sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf
# bind-address          = 127.0.0.1 hoac doi thanh 0.0.0.0
sudo service mysql restart
# Testing MySQL
systemctl status mysql.service
# Enable port 3306
sudo ufw allow 3306

# Test remore MYSQL 
mysql -u sangnd -h your_IP_Server -p

# If you want connect mysql 
mysql -u root -p

-  Install npm 
    `$ sudo apt install npm`

-  Clone project 

    `$ sudo git clone  https://github.com/.........`

    `$ cd your-project`

    `$ npm install `

-  Allow port (port in your app EX: 3000) 

    `$ sudo ufw enable`

    `$ sudo ufw allow 3000`

- Run test app  (index.js is app name)

    `$ sudo node index.js`
    - Check in browser and check connect to mysql  http://hostname:3000/mysql

## Run app in background using PM2
- Install PM2

    `$ sudo npm i pm2 -g`

- Start app with app name = demo

    `sudo pm2 start index.js --name demo`


---
## Bonus
- Can stop app using 

    `   sudo pm2 stop all `

- Can Reload app using      

    ` sudo pm2 reload all `

---
# htop
# sudo su -
# apt-get install nginx -y
# which nginx
# service nginx start

# sudo apt update
# sudo apt install nginx -y

# curl -sL https://deb.nodesource.com/setup_16.x | sudo bash -

curl -s https://deb.nodesource.com/setup_16.x | sudo bash -
sudo apt install nodejs -y
node -v
sudo npm install pm2@latest -g
mkdir apps
ls
cd apps
cd simple_chat_app && cd client 
npm install 
pm2 start app.js --name chat_app
pm2 logs 0
npm i express
sudo vim /etc/nginx/sites-available
cmt root && index index.html
cmt location

server_name _;
  location / {
        proxy_pass http://localhost:5000; #whatever port your app runs on
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
    }

sudo nginx -t
sudo service nginx restart

# https://github.com/ksekwamote/simple_chat_app/blob/master/server/app.js
