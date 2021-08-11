import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListHotelPage extends StatefulWidget {
  @override
  _ListHotelPageState createState() => _ListHotelPageState();
}

class _ListHotelPageState extends State<ListHotelPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Container(
              height: 120.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Container(
                height: 30.0,
                width: 150.0,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Enter Hotel....",
                    suffixIcon: Icon(Icons.search_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left : 10.0),
                  child: Text(
                    "Recomended",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
                Container(
                   margin: EdgeInsets.only(right : 10.0),
                  child: Text(
                    "View all",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 17.0,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
           Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              //color: Colors.green,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(5.0),
                    height: MediaQuery.of(context).size.height / 6.4,
                    width: MediaQuery.of(context).size.width,
                    //color: Colors.blue,
                    child: Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 6.4,
                          width: 140.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13.0),
                            //color: Colors.amber,
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://www.thepinnaclelist.com/wp-content/uploads/2013/02/01-Lemperie-Residence-5672-Dolphin-Place-La-Jolla-CA-USA.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "Grand Canyon",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17.0,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: Icon(
                                      Icons.location_pin,
                                      size: 18.0,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Sudirman Street 12 - 2 Km",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              iconStars2(),
                              SizedBox(
                                height: 8.0,
                              ),
                              narxlar2(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  iconStars2() {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 17.0,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          size: 17.0,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          size: 17.0,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          size: 17.0,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          size: 17.0,
          color: Colors.yellow,
        ),
        Container(
          margin: EdgeInsets.only(left: 7.0),
          child: Text(
            "5.0 (23 Rewiews)",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 11.0,
            ),
          ),
        ),
      ],
    );
  }

  narxlar2() {
    return Row(
      children: [
        Container(
          child: Text(
            "\$112.77",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17.0),
          ),
        ),
        Container(
          child: Text(
            "/night",
            style: TextStyle(color: Colors.black54, fontSize: 12.0),
          ),
        ),
      ],
    );
  }
}
