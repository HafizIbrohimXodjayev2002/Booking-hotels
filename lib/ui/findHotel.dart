import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imtihon2/malumotlar/malumotlar.dart';
import 'package:imtihon2/ui/hotelsDetail.dart';
import 'package:imtihon2/ui/searchPage.dart';

class FindHotel extends StatefulWidget {
  @override
  _FindHotelState createState() => _FindHotelState();
}

class _FindHotelState extends State<FindHotel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 13.0, left: 13.0),
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Find your hotel",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 27.0,
                ),
              ),
              SizedBox(
                height: 26.0,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 18.0, left: 3.0),
                    height: 55.0,
                    width: 300.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 2,
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 2,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Search hotel",
                        labelStyle: TextStyle(
                          color: Colors.black54,
                        ),
                        prefixIcon: Icon(Icons.search_outlined,
                            color: Colors.black54, size: 23),
                        hintText: "Hotels....",
                        hintStyle: TextStyle(color: Colors.black54),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              BorderSide(color: Colors.black54, width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              BorderSide(color: Colors.black54, width: 2),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              BorderSide(color: Colors.black54, width: 2),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SearchPage()));
                    },
                    child: Container(
                      height: 55.0,
                      width: 55.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 2,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.location_city_outlined,
                        size: 32.0,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.0,
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
                        Malumotlar.TABBARVIEWKABIMALUMOTLAR[index],
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
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HotelsDetail(index),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(5.0),
                        height: MediaQuery.of(context).size.height / 2.8,
                        width: 200.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.blue,
                          image: DecorationImage(
                              image: NetworkImage(
                                Malumotlar.RASIMLAR[index],
                              ),
                              fit: BoxFit.cover),
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 90.0,
                              width: 210.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13.0),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          Malumotlar.HOTELS[index],
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          ", Malang",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      iconStars(),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Row(
                                    children: [
                                      narxlar(),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 17.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        "Near You",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "See All",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 7.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                //color: Colors.green,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
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
        ),
      ),
    );
  }

  iconStars() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: [
          Icon(
            Icons.star,
            size: 14.0,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            size: 14.0,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            size: 14.0,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            size: 14.0,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            size: 14.0,
            color: Colors.yellow,
          ),
          Container(
            margin: EdgeInsets.only(left: 7.0),
            child: Text(
              "5.0 (23 Rewiews)",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 10.0,
              ),
            ),
          ),
        ],
      ),
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

  narxlar() {
    return Padding(
      padding: const EdgeInsets.only(left: 7.0),
      child: Row(
        children: [
          Container(
            child: Text(
              "\$26.77",
              style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  color: Colors.black54,
                  fontSize: 12.0),
            ),
          ),
          Container(
            child: Text(
              "  \$26.77",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15.0),
            ),
          ),
          Container(
            child: Text(
              "/night",
              style: TextStyle(color: Colors.black54, fontSize: 10.0),
            ),
          ),
        ],
      ),
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
