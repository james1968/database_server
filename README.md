Database Server

Makers Academy technical challenge to create a database server.  Challenge details as follows:

##You receive a message from a prospective employer:

"Before your interview, write a program that runs a server that is accessible on http://localhost:4000/. When your server receives a request on http://localhost:4000/set?somekey=somevalue it should store the passed key and value in memory. When it receives a request on http://localhost:4000/get?key=somekey it should return the value stored at somekey.

If you finish, you can work on saving the data to a file."

Create a new git repository and write code to fulfill the brief to the best of your ability. Store the data in memory, not in a database, but bear in mind that you will later need to add a database to this code.

##Instructions

Fork or clone repo https://github.com/james1968/database_server.git.

Run bundle install to ensure correct gems are installed.

Run rspec to see test coverage.

Run ruby app.rb to start application and Sinatra server.  Enter urls:
http://localhost:4000/set?somekey=somevalue and

http://localhost:4000/get?key=somekey

The results from each url are displayed on the page.  
