#!/bin/bash
### Checking host's pachage manager and setting up the package name
lsb_release -is
if [ -x "$(command -v apk)" ]; then 
    manager="apk"
    package="httpd"
elif [ -x "$(command -v apt)" ]; then 
    manager="apt"
    package="apache2"
elif [ -x "$(command -v yum)" ]; then
    manager="yum"
    package="httpd"
elif [ -x "$(command -v dnf)" ]; then 
    manager="dnf"
    package="httpd"
elif [ -x "$(command -v zypper)" ];  then
    manager="zypper"
    package="httpd"
else echo -e "FAILED TO INSTALL PACKAGE: Package manager or Package not found.";
fi
sudo $manager update # apache installation, enabling 
sudo $manager -y install $package
sudo systemctl start $package
sudo systemctl enable $package
sudo chown -R $USER:$USER /var/www # making changes to index.html avaliable
cd /var/www/html/
# Inserting custom simple html page
cat << EOF > index.html
<!DOCTYPE html>
<html>
<head>
<title>GL TEST</title>
<meta charset="UTF-8">
</head>
<body>
<h3>Yakymenko Ivan</h3>
</body>
</html>
EOF
