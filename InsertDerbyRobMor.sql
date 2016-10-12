insert into RESTAURANT(REST_NAME,ADDRESS,SEAT,RATING) values('suparerk','68/2 suksawad road',2,3.0);
insert into RESTAURANT(REST_NAME,ADDRESS,SEAT,RATING) values('suparerks','12/3 suksawad road',12,2.0);
insert into LOGIN(USERNAME,EMAIL,PASS,REGIS_DATE) values('SPR01','sryenza05@gmail.com','024276412','2016-04-16');
insert into LOGIN(USERNAME,EMAIL,PASS,REGIS_DATE) values('SPR02','sryenza01@gmail.com','024276412za','2016-05-16');
insert into USERR(fname,lname,gender,dob,telno,username) values('suparerks','pheangudom','male','2016-07-16','0931234561','SPR01');
insert into USERR(fname,lname,gender,dob,telno,username) values('suparerkSz','pheangudoM','female','2016-06-16','0911234567','SPR02');
insert into FOOD(FOOD_NAME,price,FOOD_type,rest_id,rating,detail,writer) values('ส้มตำ',2000.0,'food',3000001,3.0,'อาหารใจกินเข้าไปแต่ได้อร่อยอาหารอ่อยกินเข้าไปอร่อยจุงเบย',2000001);
insert into FOOD(FOOD_NAME,price,FOOD_type,rest_id,rating,detail,writer) values('น้ำส้มตราบีบมะนาวฆ่างู',30000.0,'drink',3000002,2.0,'โปเกม่อนโปเกม้อนบีบมะนาวฆ่างู พี่จะพาไปดูหนูและก็พาไปดูปู',2000002);
insert into RATING(FOOD_ID,RATING1,RATING2,RATING3,RATING4,RATING5) values(1000001,0,0,0,0,0);
insert into RATING(FOOD_ID,RATING1,RATING2,RATING3,RATING4,RATING5) values(1000002,0,0,0,0,0);
insert into FAVORITE(USER_ID,FOOD_ID,MY_RATING) values(2000001,1000001,4);
insert into FAVORITE(USER_ID,FOOD_ID,MY_RATING) values(2000002,1000002,3);
insert into COMMENT(USER_ID,FOOD_ID,COMMENTS,LIKE_COUNT) values(2000001,1000001,'โปเกม่อนโปเกม้อนตื๊ดตือตื๊ดตือ',3);
insert into COMMENT(USER_ID,FOOD_ID,COMMENTS,LIKE_COUNT) values(2000002,1000002,'โปเกม่อนโปเกม้อนตื๊ดตือตื๊ดตือนาจาาาาา',4);
insert into VIEWING(USER_ID,FOOD_ID,VIEWDATE) values(2000001,1000001,'2016-01-16');
insert into VIEWING(USER_ID,FOOD_ID,VIEWDATE) values(2000002,1000002,'2016-06-16');

