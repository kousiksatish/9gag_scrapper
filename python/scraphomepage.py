import mechanize
from bs4 import BeautifulSoup
import requests
import MySQLdb
db=MySQLdb.connect('localhost', 'root', 'kousiksatish', '9gag');
cur=db.cursor() 
cur1=db.cursor()
loggit="INSERT INTO entries (link, heading, extn) VALUES (%s,%s,%s);"
br=mechanize.Browser()
br.open('http://9gag.com/')
s=BeautifulSoup(br.response().read())

prev = ""
flag=1
for image,data in zip(s.findAll('img'),s.findAll('article')):
	url = image['src']
	extn = url[-4:]
	head = image['alt']
	link = data['data-entry-id']
	
	cur1.execute("SELECT link FROM entries")
	row = cur1.fetchone()
	while row is not None:
		if(row[0]==link):
			flag=0
			print 'no'
			break
		row = cur1.fetchone()
	
		
	if(head==prev):
		continue
	
	if((extn=='.jpg' or extn=='.gif') and flag==1):
		print head
		print extn
		print link
		path = '/var/www/9gag/images/'+link+extn
		r = requests.get(url)
		if r.status_code == 200:
			with open(path, 'wb') as f:
				for chunk in r.iter_content():
					f.write(chunk)
				
			
		cur.execute(loggit,(link,head,extn))
	
	prev=head
	flag=1

	
db.commit()


