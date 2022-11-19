<h1 align="center">Hi there, I'm Ivan</a> 
<img src="https://github.com/blackcater/blackcater/raw/main/images/Hi.gif" height="32"/></h1>

<h5 align="center">I'm the beginner devops engineer</h5>

###### SOME INFO ABOUT THE SCRIPT

This script is the __automation tool__ to deploy __apache webserver__ with a simple changes to basic index.html page.
The script __detects the host's package manager__ and __deploys the apache webserver__.

###### ABOUT USING

The __user__ u're running the script by should have __sudo privileges__.

The changes to the index page are done by using sipmle heredoc syntax.
Do some changes to 
```
<<EOF 
...
... 
...
EOF
```
block to receive the content you want.

###### EXECUTING

To execute the script use 
```
$chmod +x httpd-deployer.sh
```
for giving execute permission __if not exists__.

Then use
```
./httpd-deployer.sh
```
to execute the script.

Hope you enjoy visiting my project page, feel free to share ideas about improving the code! 
