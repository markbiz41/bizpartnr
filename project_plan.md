# BizPartnr.com Steps
1.  User sign-up, sign-in, and sign-out
2.  Email users about sign-up authentication process
3.  Create a partner opportunity post
4.  Display all partner opportunity posts
5.  User can receive and send out messages
6.  Partners can receive and send out messages
7.  Partner search

# User
1.  Visitors should be able to visit the home page
2.  Visitors should be able to sign-up
3.  Visitors should be able to sign-in
4.  Users should be able to sign-out
5.  Users should be able to edit their profiles
6.  Users should be able to browse partner profiles
7.  Users should be able to browse partner opportunities
8.  Users can post a new partner opportunity
9.  Users can send messages to partners on the site

# Tasks
1.  Setup Rails app
2.  Setup Github respository
3.  Setup initial Heroku app
4.  Create a seed file for partners
5.  Create a seed file for partner opportunities
6.  Configure my root routes
7.  Create a Welcome Controller / Welcome Home Page

# Data / Models
1.  User: name, email, password, avatar(photo), industry, position information, city/state, contact info
2.  Message: user, partner
3.  Opportunity: expertise desired, partnership opportunity, industry, compensation

# Controllers
1.  Session
2.  User account
3.  Search controller
4.  Opportunity controller

# Admin
1.  Admin should be able to visit the admin page
2.  Admin should be able to CRUD visitors
3.  Admin should be able to CRUD partners
4.  Admin should be able to CRUD partner opportunity

# Technologies to be used
1.  gem 'carrierwave' - upload files from Ruby applications
2.  gem 'fog' - Ruby cloud services library
3.  Environmental Variables - are key/value pairs
4.  gem 'kaminari' - pagination (dividing content into pages)
5.  gem 'bcrypt' - safely handling passwords
6.  Search Engine
7.  Active Admin
8.  Amazon S3 Identifiers - store images
9.  gem 'pg' - postgres (interface with SQL database)
10.  gem 'annotate' - add notes to a text or diagram giving explaination or comment
11.  gem 'thin' - glues together 3 of the best Ruby libraries
12.  gem 'rails_12factor' - makes running your Rails app easier
13.  SendGrid - for sending out mass emails to visitors
14.  gem 'mandrill api' - for sending out mass emails to visitors

# Risks
1.  Site becomes too complex to use
2.  Not enough initial users for the site to exist
3.  Site doesn't end up working
4.  I have not done email yet.
