Date: 2022-01-29
After creating several websites for customers, I would like to build a website for myself.
My website, www.mywService.com, stands for Yan media&web service. The website shows my favorite photos in each shooting mission and presents my web service skills. It contains several static pages and a Blog section with a user registration system.

Choose operation system – Linux
Linux is widely chosen in small to medium size servers. Linux has several advantages:
• High security and high stability
• Free and open source
• Easy to use
• Large community
• I have implemented several sites based on Linux operating system

Choose Language – Python
Python is a general purpose and high level programming language.
• Readable and maintainable code
• Multiple programming paradigms
• Compatible with major platforms and systems
• Robust standard library
• Open source frameworks and tools
• Simplify complete software development
• Adopt test driven development

Choose Framework – Django (which version ?)
Django is best user-friendly web framework I have even used. The open-source frame-work is very popular because it's powerful for rapid development, pragmatic, maintainable, clean design. It also has great features to secure websites.
• Easy to use
• Operation system dependent
• Scalable and reliable
• Excellent documentation for real-world application
• Community Support

Django is the most popular framework for python web application development. Django uses Model View Template (MVT) architecture, which is slightly modified Model View Controller (MVC) architecture. Compared to MVC architecture, in MVT architecture, Model keeps the same, View acts as Controller, Template replaces View. MVT architecture allows a structure for keeping display and data separating, and each change without affecting the others. The more I understand MVT architecture, the more I like to use Django.

In my project, I create Post, Subject, Comment models and remain User model. Post model is a many-one relationship with Subject / User and a one-many relationship with Comment. Comment is a many-one relationship with User.

At beginning of design, I wanted to use Generic Views which are provided by Django since they are reliable and convenient. After studying Django documents carefully, I found out that it might cause problems with Generic Views for the project.

In Django, view is responsible for data transfer between Model and Template. If the more than one Model (This is common case after I add Comment model.) is being transferred, I have to carefully redesign get_context_data() function, also I take advantage of add_variable_to_context() function in context_prcessors.py file.

I adopt inheritance techniques in Template design. I use Bootstrap 4 to improve appearance of the web site.

I begin with design static pages, then dynamical pages. I first create Post model, then add Subject model, then User model, and add Comment model finally. Gradually adding and test model one by one ensures my application growing up from a single page to a dynamical website steadily.

Django recommends mod_wsgi method as the first choice to deploy python/Django application. Django also makes great effort to simplify the procedures, and the mod_wsgi is becoming much easier to use.

WSGI stands for Web Sever Gateway Interface. It describes how a web server communicates with web applications. I describe the process as follows:

Step one: create connection between server and local machine
I order my domain name from 1&1.com, and server provider from Linode.com. I choose Ubuntu (VERSION=18.10 (Cosmic Cuttlefish)) as my server operating system.

Next, I create a SSH connection.

Step two: create virtual environment and run server as localhost
Ubuntu 18.10 pre-installs Python 3.6.8 so I install pip3 instead of pip. The environment makes the operating system contain commands of python3 and pip3 instead of python and pip.
$ sudo apt-get install python3-pip

With pip, I can easy to install Django and required software, for example:
$ pip3 install Django==2.2

Then I use FileZilla Client to transfer my application files to the server. Since I use MySQL as Database, I install the MySQL server, e.g.
$ sudo apt-get install mysql-server

Also, I create user in MySQL and copy MySQL file from local machine to the server.
$ sudo mysql -u root –p //password
mysql>>> GRANT ALL PRIVILEGES ON *.* TO 'username'@'localhost' IDENTIFIED BY 'pwd';
mysql>>>create database DBforApp
mysql>>>exit;
$ sudo mysql -u root -p DBforApp < DBfromLocal.sql

Now I have copies of in the local machine, I create virtual environment in the server.
$ sudo apt-get install python3-venv
$ python3 –m venv App/venv
$ cd App
$ source venv/bin/activate

And run python with localhost:
$python3 manage.py runserver 0.0.0.0:8000

It seems not a critical step to host on port 8000. However, if I need to debug, getting back to this step is a MUST. In fact, I have been back here several times.

Step three: web host under apache2
In this step, I install Apache2, mod_wsgi and set up firewall.
$ apt-get install apache2
$ sudo apt-get install libapache2-mod-wsgi-py3

Then I create the file /etc/apache2/sites-enabled/mywservice.com.conf and remove other .conf in the same folder.

Step Four: application settings
In the new version Django, I don’t need to modify wsgi.py file.
For the settings.py, I change DEBUG = false; and secure the sensitive information, such as, key, password…

Next I change privileges for media files, static files and database.
Finally run:
$sudo service apache2 restart

If everything is correct after uploading files, I should be able to see my website on internet. However, I don’t believe things will go the direct and simple way I expect. Actually, it costs me several days to make it happen. I would like to share an interesting and important experience. I paid a lot of attention to file names since I know Linux is case sensitive and Windows not. Unfortunately, I didn’t pay attention to file extensions. At beginning, I used “default.jpg” in my application so the file was saved as “default.JPG” in Windows system. FileZilla transferred the files loyally so “default.JPG” (not default.jpg) was uploaded to the online server. The difference of file extensions causes internal server errors. It took me pretty long time to figure out the real cause of the problems.

