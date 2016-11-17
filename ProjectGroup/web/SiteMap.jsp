<%-- 
    Document   : SiteMap
    Created on : Nov 17, 2016, 2:43:51 PM
    Author     : Ratchanon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
    <mata name="viewport" content="width=device-width , initial-scale=1.0">
        <title>Robmor</title>
        <link rel="stylesheet" type="text/css" href="myStyle.css">
        <link rel="stylesheet" type="text/css" href="myStyle1.css">
        <style type="text/css">

            #div1 {
                float: left;
                width: 320px;
            }
            #div2 {
                float: right;
                width: 400px;
            }
            ul {
                list-style-type: none;
            }
        </style>
    </head>
    <body>
        <jsp:include page="/Header.jsp"/>
        <div id="header">
            <img class="poster" src="pic/poster/poster5.jpg">
        </div>
        <!-- body -->
        <div >
            <div >
                <center>
                    <u><h1>Index</h1></u>

                    <div>
                        <div id = 'div1'>
                            <h2><li><a class="map" href="food.html">Food</a></li></h2>
                            <ul>
                                <li><a class="map" href="food1.html">เจ๊จิ๋ม</a></li>
                                <li><a class="map" href="food2.html">Fin Steak House</a></li>
                                <li><a class="map" href="food3.html">ควันฉุยกริลล์</a></li>
                                <li><a class="map" href="food4.html">Koffee Park</a></li>
                                <li><a class="map" href="food5.html">Hokkaido Curry</a></li>
                                <li><a class="map" href="food6.html">I Am Steak</a></li>
                                <li><a class="map" href="food7.html">บ้านกินเส้น</a></li>
                                <li><a class="map" href="food8.html">ป้าสี่คน</a></li>
                                <li><a class="map" href="food9.html">อู่ข้าวอู่น้ำ สาขาประชาอุทิศ</a></li>
                                <li><a class="map" href="food10.html">โจ๊กเปิดหม้อ สาขาประชาอุทิศ</a></li>
                            </ul>
                            <br>
                        </div>
                        <div id = 'div1'>
                            <h2><li><a class="map" href="dessert.html">Dessert</a></li></h2>
                            <ul>
                                <li><a class="map" href="dessert1.html">The First Korean Dessert Café</a></li>
                                <li><a class="map" href="dessert2.html">ลุงหนุ่ม</a></li>
                                <li><a class="map" href="dessert3.html">Study Room café (Café Can Do)</a></li>
                                <li><a class="map" href="dessert4.html">น้ำชาเก่าโกปี</a></li>
                                <li><a class="map" href="dessert5.html">สมใจดื่ม</a></li>
                                <li><a class="map" href="dessert6.html">อันปัง</a></li>
                                <li><a class="map" href="dessert7.html">โรตีโอ่ง</a></li>
                                <li><a class="map" href="dessert8.html">The ice land</a></li>
                                <li><a class="map" href="dessert9.html">Some place</a></li>
                                <li><a class="map" href="dessert10.html">Koffee Park</a></li>
                            </ul>
                            <br>
                        </div>
                        <div id = 'div1'>
                            <h2><li><a class="map" href="drink.html">Drink</a></li></h2>
                            <ul>
                                <li><a class="map" href="drink1.html">ร้านลุงหนุ่ม</a></li>
                                <li><a class="map" href="drink2.html">Study Room café(Café Can Do)</a></li>
                                <li><a class="map" href="drink3.html">น้ำชาเก่าโกปี</a></li>
                                <li><a class="map" href="drink4.html">สมใจดื่ม</a></li>
                                <li><a class="map" href="drink5.html">อันปัง</a></li>
                                <li><a class="map" href="drink6.html">โรตีโอ่ง</a></li>
                                <li><a class="map" href="drink7.html">Some place</a></li>
                                <li><a class="map" href="drink8.html">Koffee Park</a></li>
                            </ul>
                            <br>
                        </div>
                    </div>
                </center>
                <br>

                <div id='div2'>
                    <h2><li><a class="map" href="Team.jsp">About us</a></li></h2>
                </div>	
                <div id='div2'>
                    <h2><li><a class="map" href="SiteMap.jsp">Site map</a></li></h2>
                </div>	
            </div>
        </div>
        <!-- footer -->
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
