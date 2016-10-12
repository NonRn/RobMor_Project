CREATE TABLE LOGIN
(    
   USERNAME VARCHAR(30) not null primary key,   
   EMAIL VARCHAR(30) not null UNIQUE,     
   PASS VARCHAR(15),
   regis_date DATE
       
);


CREATE TABLE USERR
(    
   user_id INT not null primary key
        GENERATED ALWAYS AS IDENTITY
        (START WITH 2000001, INCREMENT BY 1),
   fname VARCHAR(25),     
   lname VARCHAR(25),     
   gender varchar(10),
   dob DATE,
   telno varchar(15),
   username varchar(30) UNIQUE,
   foreign key (username) references login(username)
       
);


CREATE TABLE Restaurant
(    
   rest_id INT not null primary key
        GENERATED ALWAYS AS IDENTITY
        (START WITH 3000001, INCREMENT BY 1),
   rest_name VARCHAR(50),     
   address VARCHAR(100),     
   seat integer,
   rating double
       
);



CREATE TABLE Food
(    
   food_id INT not null primary key
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1000001, INCREMENT BY 1),
   food_name VARCHAR(100),     
   price double,
   food_type VARCHAR(25),     
   rest_id integer,
   rating double,
   detail varchar(255),
   writer integer,
   foreign key (rest_id) references RESTAURANT(rest_id),
   foreign key (writer) references USERR(user_id)
       
);



CREATE TABLE Viewing
(    
   user_id integer,
   food_id integer,
   viewDate date,
   foreign key (food_id) references food(food_id),
   foreign key (user_id) references USERR(user_id)
       
);



CREATE TABLE Favorite
(    
   user_id integer,
   food_id integer,
   my_rating integer,
   foreign key (food_id) references food(food_id),
   foreign key (user_id) references USERR(user_id)
       
);



CREATE TABLE Comment
(    
   user_id integer,
   food_id integer,
   comments varchar(255),
   like_count integer,
   foreign key (food_id) references food(food_id),
   foreign key (user_id) references USERR(user_id)
       
);



CREATE TABLE Rating
(    
   food_id integer primary key not null,
   rating1 integer,
   rating2 integer,
   rating3 integer,
   rating4 integer,
   rating5 integer,
   foreign key (food_id) references food(food_id)
       
);