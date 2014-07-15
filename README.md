Web scrapper for 9gag.com

Web scrapping is done by Python

python/ has two files

scrappages.py - 
	Initial 9gag.com page (e.g.'http://9gag.com/gag/aM1RrAx') is given as currpage
	The code loops through next posts and stores details in database

scraphomepage.py - 
	It extracts the images from home page (http://9gag.com) and stores it in database

images/ consists of stored images from 9gag

index.php contains the php code for generating web page

Things to change locally:
	1. Change DB details in sqlconfig.php
	2. Change path in both python file to the images/ folder location
