insert into RESTAURANT(REST_NAME,ADDRESS,SEAT,RATING) values('ร้านเจ๊จิ๋ม','หน้ามหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี',20,0);
insert into RESTAURANT(REST_NAME,ADDRESS,SEAT,RATING) values('ร้าน Fin Steak House','หน้ามหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี',15,0);
insert into RESTAURANT(REST_NAME,ADDRESS,SEAT,RATING) values('ร้านควันฉุยกริลล์','หน้ามหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี',25,0);
insert into RESTAURANT(REST_NAME,ADDRESS,SEAT,RATING) values('ร้าน Koffe Park','ภายในมหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี',10,0);
insert into RESTAURANT(REST_NAME,ADDRESS,SEAT,RATING) values('ร้าน Hokkaido Curry','ซอยประชาอุทิศ 47',25,0);
insert into RESTAURANT(REST_NAME,ADDRESS,SEAT,RATING) values('ร้าน I am Steak','ตรงข้ามมหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี บริเวณลานปูน',10,0);
insert into RESTAURANT(REST_NAME,ADDRESS,SEAT,RATING) values('ร้านบ้านกินเส้น','ตรงหน้ามหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี',18,0);
insert into RESTAURANT(REST_NAME,ADDRESS,SEAT,RATING) values('ร้านป้าสี่คน','ลานไม้ หน้ามหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี',25,0);
insert into RESTAURANT(REST_NAME,ADDRESS,SEAT,RATING) values('ร้านอู่ข้าวอู่น้ำ ซีฟู้ดหมูกระทะ','ถนนประชาอุทิศ ก่อนถึงตลาดสดประชาอุทิศ 61',250,0);
insert into RESTAURANT(REST_NAME,ADDRESS,SEAT,RATING) values('ร้านโจ๊กเปิดหม้อ','ลานไม้ หน้ามหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี',20,0);



insert into LOGIN(USERNAME,EMAIL,PASS,REGIS_DATE) values('SPR01','sryenza05@gmail.com','024276412','2016-04-16');
insert into LOGIN(USERNAME,EMAIL,PASS,REGIS_DATE) values('SPR02','sryenza01@gmail.com','024276412za','2016-05-16');
insert into LOGIN(USERNAME,EMAIL,PASS,REGIS_DATE) values('meen','commonmeen@gmail.com','12345','2016-08-13');
insert into LOGIN(USERNAME,EMAIL,PASS,REGIS_DATE) values('non','non@gmail.com','12345','2016-01-03');
insert into LOGIN(USERNAME,EMAIL,PASS,REGIS_DATE) values('you','you@gmail.com','12345','2016-02-27');
insert into LOGIN(USERNAME,EMAIL,PASS,REGIS_DATE) values('yeen','yeen@gmail.com','12345','2016-10-29');

insert into USERR(fname,lname,gender,dob,telno,username) values('suparerks','pheangudom','male','2016-07-16','0931234561','SPR01');
insert into USERR(fname,lname,gender,dob,telno,username) values('suparerkSz','pheangudom','female','2016-06-16','0911234567','SPR02');
insert into USERR(fname,lname,gender,dob,telno,username) values('Ratchanon','Bunjumroon','female','2016-02-12','0909091123','non');
insert into USERR(fname,lname,gender,dob,telno,username) values('Patchareeporn','Srirod','female','2016-07-25','0871230870','you');
insert into USERR(fname,lname,gender,dob,telno,username) values('Suparerk','Pheangudom','male','2016-06-16','0876598070','yeen');




insert into FOOD(FOOD_NAME,price,FOOD_type,rest_id,rating,detail,writer) values('ข้าวราดผงกะหรี่',35.0,'food',3000001,2.0,'ข้าวราดแกงกะหลี่ เป็นอาหารที่ทานง่าย และอร่อย หากนึกว่าไม่ออกว่าจะกินเมนูอะไรดี แนะนำให้สั่งเมนูนี้',2000004);
insert into FOOD(FOOD_NAME,price,FOOD_type,rest_id,rating,detail,writer) values('สเต็กไก่',100.0,'food',3000002,3.0,'สเต็กไก่ร้าน fin steak ไก่ชิ้นโตมาพร้อมกับเครื่องเคียงอย่างสลัดและมันบด รสชาติอร่อยไม่แห้งจนเกินไป ปริมาณและคุณภาพคุ้มราคา',2000004);
insert into FOOD(FOOD_NAME,price,FOOD_type,rest_id,rating,detail,writer) values('ข้าวไข่ข้น',40.0,'food',3000003,4.0,'ข้าวไข่ข้นของร้านนี้มีอยู่ด้วยกันสองแบบคือไข่ข้นแฮมและไข่ข้นเบคอน ซึ่งในบางครั้งทางร้านจะเพิ่มชีสโรยลงบนหน้าไข่ข้นให้อีกด้วย อิ่มอร่อยในราคา 40 บาท',2000004);
insert into FOOD(FOOD_NAME,price,FOOD_type,rest_id,rating,detail,writer) values('พะแนงไก่ไข่เจียว',35.0,'food',3000004,2.0,'พะแนงไก่ไข่เจียวของร้านนี้ในส่วนของรสชาติถือว่าอร่อย เหมาะสมกับราคา มาในรูปของถ้วยกระดาษแข็งสะดวกต่อการทำความสะอาด เป็นข้าวสวยร้อนๆเคียงข้างด้วยพะแนงไก่ โปะทับด้วยไข่เจียวเหลืองน่ารับประทาน',2000002);
insert into FOOD(FOOD_NAME,price,FOOD_type,rest_id,rating,detail,writer) values('ข้าวแกงกะหรี่โคร็อกเกะ',100.0,'food',3000005,2.0,'แกงกะหรี่ของร้านนี้เป็นสไตล์ฮอกไกโด คนทำเป็นคนญี่ปุ้นแท้ รสชาติอร่อยกลมกล่อม ราดอยู่บนข้าวญี่ปุ่นน่ารับประทาน ในส่วนขอโคร็อกเกะนี้ทำมาจากมันฝรั่งชุบแป้งทอด รสชาติอร่อยไม่แพ้กัน',2000005);
insert into FOOD(FOOD_NAME,price,FOOD_type,rest_id,rating,detail,writer) values('สเต็กหมู',60.0,'food',3000006,2.0,'สเต็กหมูฉ่ำไปด้วยซอส ชิ้นใหญ่เต็มจาน มาพร้อมกับสลัดและขนมปัง ในส่วนของรสชาตินั้นอร่อยกำลังดี ที่น่าประทับใจคือสลัด สลัดของร้านนี้ไม่ใช่ผักที่หั่นหรือซอยมาไว้รวมๆกับแล้วคลุกน้ำสลัด แต่ประกอบไปด้วยผักหลากหลายชนิดจัดวางเรียงไว้น่ารับประทาน',2000003);
insert into FOOD(FOOD_NAME,price,FOOD_type,rest_id,rating,detail,writer) values('ก๋วยเตี๋ยวต้มยำ',45.0,'food',3000007,3.0,'ก๋วยเตี๋ยวต้มยำของร้านบ้านกินเส้นมาพร้อมกับแพคเกจน่ารัก เสิร์ฟในถ้วยรูปร่างคล้ายกับกะลา ราคาตามแต่ส่วนประกอบที่เราเพิ่มลงไป รสชาติต้มยำอร่อยเข้มข้น อีกทั้งยังสามารถเลือกได้ว่าเราต้องการน้ำต้มยำระดับไหน มากหรือน้อย สำหรับใครที่ชอบในการเลือการรจัดการส่วนผสมของก๋วยเตี๋ยวเอง พลาดไม่ได้เด็ดขาด',2000002);
insert into FOOD(FOOD_NAME,price,FOOD_type,rest_id,rating,detail,writer) values('คะน้าน้ำมันหอยหมู',35.0,'food',3000008,4.0,'ราคาไม่แพงมาก ประมาณ 30-40 บาท อร่อย ให้ในปริมาณเยอะ ทั้งข้าวและกับข้าวที่ราดมา รสชาติไม่เคยทำให้ผิดหวัง นอกจากนี้ยังมีความใส่ใจในการทำอาหารขอคุณป้าเจ้าของร้านในทุกเมนูที่ทำออกมา ',2000003);
insert into FOOD(FOOD_NAME,price,FOOD_type,rest_id,rating,detail,writer) values('โจ๊กเย็นตาโฟต้มยำ',65.0,'food',3000010,3.0,'เมนูนี้ใครได้ยินแล้วคงจะแปลกใจ ว่ามีโจ๊กที่เป็นเย็นตาโฟด้วยหรือ โจ๊กเย็นตาโฟต้มยำนี้เป็นโจ๊กต้มยำใส่เครื่องปรุงที่เป็นเย็นตาโฟลงไป ทำให้โจ๊กเป็นสีชมพูและมีรสของทั้งเย็นตาโฟและรสชาติของต้มยำ ในเรื่องของรสชาตินั้นอาจจะไม่ค่อยคุ้นเคยซักหน่อย แต่ถือว่าอร่อยแปลกลิ้น',2000004);


insert into RATING(FOOD_ID,RATING1,RATING2,RATING3,RATING4,RATING5) values(1000001,0,0,0,0,0);
insert into RATING(FOOD_ID,RATING1,RATING2,RATING3,RATING4,RATING5) values(1000002,0,0,0,0,0);
insert into FAVORITE(USER_ID,FOOD_ID,MY_RATING) values(2000001,1000001,4);
insert into FAVORITE(USER_ID,FOOD_ID,MY_RATING) values(2000002,1000002,3);

insert into COMMENT(USER_ID,FOOD_ID,COMMENTS,LIKE_COUNT) values(2000001,1000001,'อร๊อย อร่อย',3);
insert into COMMENT(USER_ID,FOOD_ID,COMMENTS,LIKE_COUNT) values(2000002,1000002,'อร่อยมากๆเลย ไม่ควรพลาด',4);

