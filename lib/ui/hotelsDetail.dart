import 'package:flutter/material.dart';
import 'package:imtihon2/malumotlar/malumotlar.dart';

class HotelsDetail extends StatefulWidget {
  int? index;
  HotelsDetail(this.index);
  @override
  _HotelsDetailState createState() => _HotelsDetailState();
}

class _HotelsDetailState extends State<HotelsDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2.8,
                width: MediaQuery.of(context).size.height,
                color: Colors.amber,
                child: Image.network(
                  Malumotlar.RASIMLAR[widget.index!],
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                margin: EdgeInsets.only(top: 40.0, left: 20.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_outlined,
                    size: 30.0,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        Malumotlar.HOTELS[widget.index!],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                            letterSpacing: 1.5),
                      ),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 20.0,
                          ),
                          Container(
                            child: Text(
                              "5.0",
                              style: TextStyle(
                                color: Colors.amber,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              "/5 (23 Reviews)",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 65.0,
                  width: 65.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13.0),
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  child: Icon(
                    Icons.location_city,
                    size: 35.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2.0, right: 8.0),
            child: Row(
              children: [
                Container(
                  child: Icon(
                    Icons.location_pin,
                    size: 30.0,
                    color: Colors.black54,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      child: Text(
                        """JI. ${Malumotlar.HOTELS[widget.index!]} No.9, RW.3, Kauman, Kec, Klojen,
Kota Malang, Jawa Timur 6511""",
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 14.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 8.0, right: 8.0),
            child: Text(
              "Description",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 8.0, right: 8.0),
            child: Text(
                """The ${Malumotlar.HOTELS[widget.index!]} Hotel (also known as The ${Malumotlar.HOTELS[widget.index!]}) is a luxury hotel and condominium 
apartment building in Midtown  lorem ipsum dollar
Manhattan in New York City."""),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 8.0, right: 8.0),
            child: Text(
              "Facilities",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
          ),
          SizedBox(
            height: 14.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 1.0, right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 3,
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 3,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.local_dining_outlined,
                        size: 30.0,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      child: Text(
                        "Breakfast",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14.0),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 3,
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 3,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.wifi,
                        size: 30.0,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      child: Text(
                        "Wifi",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14.0),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 3,
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 3,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.local_parking,
                        size: 30.0,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      child: Text(
                        "Parking",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14.0),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 3,
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 3,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.pool_outlined,
                        size: 30.0,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      child: Text(
                        "Swimming",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 8.0),
                    child: Text(
                      "\$156.77",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Total Price",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Text(
                  " / night",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 140.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Book Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 35.0, vertical: 15.0),
                    primary: Colors.blue.shade300,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
