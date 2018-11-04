sudo service nginx stop

sudo cp -r ./src/* /var/www/mccown.pro
sudo cp ./config/nginx.conf /etc/nginx/sites-available/nginx.conf
sudo find /etc/nginx/sites-enabled/ -type l -print0 | sudo xargs -0 rm
sudo ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/nginx.conf

sudo service nginx start