import mechanize
from bs4 import BeautifulSoup
import requests
import MySQLdb
db=MySQLdb.connect('localhost', 'root', 'kousiksatish', '9gag');
cur=db.cursor() 
cur1=db.cursor()
loggit="INSERT INTO entries (link, heading, extn) VALUES (%s,%s,%s);"
choice = 'y';
br=mechanize.Browser()
currurl = 'http://9gag.com/gag/aM1RrAx'
while choice=='y':
	br.open(currurl)
	s=BeautifulSoup(br.response().read())	   
	se = s.find("a", { "class" : "badge-fast-entry badge-next-post-entry next " })
	nexturl = 'http://9gag.com'+se['href'];
	article = s.find('article')
	link =  article['data-entry-id']
	for img in s.findAll('img'):
		url = img['src']
		head = img['alt']
		break
	
	cur1.execute("SELECT link FROM entries")
	row = cur1.fetchone()
	while row is not None:
		if(row[0]==link):
			flag=0
			print 'Entry already created'
			break
		
		row = cur1.fetchone()
			
	
	extn = url[-4:]
	path = '/var/www/9gag/images/'+link+extn
	if flag==1:
		print link
		print head
		print extn
		print url
		r = requests.get(url)
		if r.status_code == 200:
			with open(path, 'wb') as f:
				for chunk in r.iter_content():
					f.write(chunk)
				
			
		
		cur.execute(loggit,(link,head,extn))
		db.commit()
	
	currurl = nexturl
	flag = 1
	choice = raw_input("Do you want to scrap next entry(y/n): ")
	

