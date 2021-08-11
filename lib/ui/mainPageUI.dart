import 'package:flutter/material.dart';
import 'package:imtihon2/ui/accountPage.dart';
import 'package:imtihon2/ui/findHotel.dart';
import 'package:imtihon2/ui/listHotel.dart';
import 'package:imtihon2/ui/messagePage.dart';

class MainPageUI extends StatefulWidget {
  String? name;
  MainPageUI({this.name = 'Ibrohim'});
  @override
  _MainPageUIState createState() => _MainPageUIState();
}

class _MainPageUIState extends State<MainPageUI> {
  int index = 0;
  List<Widget>? pageList;
  FindHotel? findHotel;
  ListHotelPage? listHotelPage;
  MessagePage? messagePage;
  AccountPage? accountPage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    findHotel = FindHotel();
    listHotelPage = ListHotelPage();
    messagePage = MessagePage();
    accountPage = AccountPage(name: widget.name,);
    pageList = [findHotel!, listHotelPage!, messagePage!, accountPage!];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black54,
        iconSize: 30.0,
        onTap: (itemIndex) {
          setState(() {
            index = itemIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_alt_outlined,
            ),
            label: "List Hotel",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mail,
            ),
            label: "Message",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          ),
        ],
      ),
      appBar: appBar1()[index],
      body: pageList![index],
    );
  }

  appBar1() {
    var appbarlar = [
      AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Hello ${widget.name}",
          style: TextStyle(
            color: Colors.black54,
            fontSize: 18.0,
          ),
        ),
        actions: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 18.0),
                child: Icon(
                  Icons.notifications_outlined,
                  size: 32.0,
                  color: Colors.black54,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 24.0, left: 18.0),
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 5.0,
                ),
              ),
            ],
          ),
        ],
        bottomOpacity: 0,
      ),
      AppBar(
        centerTitle: true,
        elevation: 0.0,
        bottomOpacity: 0.0,
        backgroundColor: Colors.blue,
        title: Text(
          "List Hotel",
          style: TextStyle(
            color: Colors.white,
            fontSize: 27.0,
          ),
        ),
      ),
      AppBar(
        centerTitle: true,
        title: Text(
          "Message",
          style: TextStyle(
            color: Colors.black54,
            fontSize: 20.0,
          ),
        ),
      ),
      AppBar(
        backgroundColor: Colors.black54,
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        leading: Icon(
          Icons.menu,
          size: 25.0,
          color: Colors.white,
        ),
      ),
    ];
    return appbarlar;
  }
}
