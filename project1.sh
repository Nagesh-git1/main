## first Project ###
#!/bin/bash

echo "Launching web server"

sudo apt install git -y
sudo git --version

if dpkg -s "apache2" >/dev/null 2>&1; then
    echo "Apache2 is already installed. Skipping installation."
else
    echo "Apache2 is not installed. Installing..."
    sudo apt update
    sudo apt install -y apache2
fi
sudo systemctl enable apache2
sudo apt update 

git clone https://github.com/Nagesh-git1/main.git

sudo cp -r  /home/ubuntu/main/porfolio /var/www/html/index.html


sudo systemctl restart apache2



