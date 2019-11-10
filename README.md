### OVERVIEW
This is a full-stack Spring Web MVC application with C.R.U.D. implementation.
The project is designed to allow for user to store campsite locations for
future use. Each campsite can be modified, deleted, or searched. The goal of
this project is to simulate how you would read data from - and write data
to - a database.

I chose to design a site to store campsite locations because I wanted to solve
my issue of always forgetting the locations of my favorite campsites.

This application planning process began by first developing the back-end.
Once the database was created and there was a passed test connection, I began
testing simple search, edit, and modify functions before moving onto
any of the front-end design. After I knew I had a MVP, I began configuring
how I wanted the front-side interface flow.


### TECHNOLOGIES USED
--MVC pattern for separation of concerns
--Spring Boot to expedite the development process.
--Java Persistence API (JPA) for relational mapping and for simplifying the persistence of POJOs
--Java Persistence Query Language for querying the database.
--Amazon Web Services (AWS) for deploying the application

-- Java, HTML, CSS, Bootstrap


### STRETCH GOALS
Two of the fields for the Campsite object are latitude and longitude. These
coordinates are the locations of the of each Campsite. I was able to implement
a hyperlink to google maps for each coordinate, but it is redirecting to a
default location on google maps. I want to implement a map to display
all saved locations displayed on one single frame.

Another stretch goal is to add login users so that each user can privately
store their own sites.



###LESSONS LEARNED
This project was great for putting many of the pieces together that I've
learned over the last two months - especially the last few weeks. This project,
more than others I have worked on, really forced me to better understand
expression language. The passing of values from within a JSP file was a
challenge for me.

I had an issue where my View side wasn't displaying the updated information of
a campsite. I really thought the issue was in the JSP but after testing and
nice break, I realized the issue was actually because of the absence  
of a no-arg constructor in my Campsite entity class.
