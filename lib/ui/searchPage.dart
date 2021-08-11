import 'package:flutter/material.dart';
import 'package:imtihon2/malumotlar/malumotlar.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Search Hotel",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black),
        ),
        leading: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                spreadRadius: 1,
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 1,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: 30.0,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 13, right: 13.0),
        child: ListView(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    // margin: EdgeInsets.only(top : 20.0, left : 10.0),
                    child: Text(
                      "Where do you want to stay?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(left : 3.0),
                    height: 400.0,
                    width: 380.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 3,
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 4,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                ),
                                child: Icon(
                                  Icons.location_city_outlined,
                                  size: 30.0,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Looking for a hotel comfortable",
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Divider(
                          height: 10.0,
                          color: Colors.black54,
                        ),
                        Container(
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 20.0),
                              hintText: "Find Hotels...",
                              hintStyle: TextStyle(
                                fontSize: 15.0,
                              ),
                              prefixStyle: TextStyle(fontSize: 20.0),
                              prefixIcon: Icon(Icons.search_outlined),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10.0),
                              child: Icon(
                                Icons.calendar_today_outlined,
                                size: 30.0,
                                color: Colors.black54,
                              ),
                            ),
                            Container(
                              child: Text(
                                "Check In",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 130.0),
                              child: Icon(
                                Icons.calendar_today_outlined,
                                size: 30.0,
                                color: Colors.black54,
                              ),
                            ),
                            Container(
                              child: Text(
                                "Check Out",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Divider(
                          height: 10.0,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10.0),
                              child: Icon(
                                Icons.location_city_outlined,
                                size: 30.0,
                                color: Colors.black54,
                              ),
                            ),
                            Container(
                              child: Text(
                                "Filter",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 18.0,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Divider(
                          height: 20.0,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Search Now",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            primary: Colors.blue.shade300,
                            padding: EdgeInsets.symmetric(
                              vertical: 15.0,
                              horizontal: 100.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Top Destination",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width,
                    //color: Colors.green,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(5.0),
                          height: 50.0,
                          width: 130.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 1,
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 1,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Text(
                            Malumotlar.TABBARVIEWKABIMALUMOTLAR2[index],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    height: 300.0,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(10.0),
                          height: 300.0,
                          width: 180.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                Malumotlar.RASIMLAR2[index],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
