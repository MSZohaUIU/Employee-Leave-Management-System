Installation Steps(Configuration)

1. Download and Unzip the file on your local system.
2. copy elms folder and put this file inside root directory(for xampp is htdocs,for wamp is www and for lamp is var/www/
3. Database Configuration

Open phpmyadmin

Create Database elms.
Import database elms.sql(file available inside the pacakege)
Open Your browser put inside browser “http://localhost/elms/”

#Login details for employee

	Employee1>Email id : arafat@gmail.com
		  Passowrd : arafat123
	Employee2>Emial id : akash@gmail.com
		  Password : akash123

#For admin login click on the admin login then provide username and password

Email id : admin
Passowrd : admin123


#Project Over View:

>Admin:
	- Admin can create Update delete Employee.
	- Admin will approve or not approve the employee leave application.
	- Admin Have all the history of leave application pendaing, approve, wating appliction.
	- If employee send a leave application admin will recive a notification on his dasbord 
	- Admin can create update delete the leave type.
	- Admin can create update delete the department.
	- Admin can change the password.

>Employe:
	- Employee will login with the email and password provided by Admin then he/she can change it.
	- Employee can update there profile.
	- Employee can send leave application.
	- Employee have the leave application history they send and also see the status of the leave application. 