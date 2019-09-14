from flask import Flask,render_template,request,redirect,url_for

from flask_mysqldb import MySQL

from wtforms import Form,TextField,IntegerField,TextAreaField

app=Flask(__name__)

class A(Form):
	cname=TextField('Name')
	address=TextField('Address')
	pname=TextField('Project Name')
	description=TextAreaField('Description')
	development_time=IntegerField('Development Time')
	pcost=IntegerField('Project Cost')
	id1=IntegerField()
	id2=IntegerField()
	c1=IntegerField()
	c2=IntegerField()
	dname=TextField('Name')
	daddress=TextField('Address')
@app.route('/',methods=['GET','POST'])
def indexa():
	a=A(request.form)
	if request.method=='POST':
		cname=a.cname.data
		address=a.address.data
		pname=a.pname.data
		development_time=a.development_time.data
		pcost=a.pcost.data
		id1=a.id1.data
		id2=a.id2.data
		c1=a.c1.data
		c2=a.c2.data
		dname=b.dname.data
		daddress=b.daddress.data
		
	
		print str(cname)+"moit"
		#return redirect(url_for('indexb'))
	return render_template('index3.html',form=a)

if __name__ == '__main__':
	app.run(debug=True)