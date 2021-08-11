import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AccountPage extends StatefulWidget {
  String? name;
  AccountPage({this.name = 'User'});
  @override
  _ListHotelPageState createState() => _ListHotelPageState();
}

class _ListHotelPageState extends State<AccountPage> {
  File? _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://cdn.jhmrad.com/wp-content/uploads/dream-home-ideas-luxury-plans-house_702535.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 150.0, left: 60.0),
          height: 420.0,
          width: 290.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
            boxShadow: [
              BoxShadow(
                spreadRadius: 3,
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 2,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20.0, left: 10.0),
                    child: Icon(
                      Icons.settings,
                      size: 22.0,
                      color: Colors.black54,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0, right: 10.0),
                    child: Icon(
                      Icons.edit_outlined,
                      size: 22.0,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 23.0,
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 80.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Text(
                            "Welcome Back",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "${widget.name}",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ],
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
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.black54,
                  size: 32.0,
                ),
                title: Text(
                  "Account",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_right_sharp,
                  color: Colors.black54,
                  size: 32.0,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.hotel_outlined,
                  color: Colors.black54,
                  size: 32.0,
                ),
                title: Text(
                  "Hotels",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_right_sharp,
                  color: Colors.black54,
                  size: 32.0,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.share,
                  color: Colors.black54,
                  size: 32.0,
                ),
                title: Text(
                  "Share with friends",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_right_sharp,
                  color: Colors.black54,
                  size: 32.0,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.reviews,
                  color: Colors.black54,
                  size: 32.0,
                ),
                title: Text(
                  "Review",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_right_sharp,
                  color: Colors.black54,
                  size: 32.0,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.black54,
                  size: 32.0,
                ),
                title: Text(
                  "Info",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_right_sharp,
                  color: Colors.black54,
                  size: 32.0,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 88,
          left: 150,
          child: GestureDetector(
            onTap: () => getImage(),
            child: _image == null
                ? Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 1,
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 1,
                            offset: Offset(0, 3),
                          ),
                        ],
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2.5),
                        color: Colors.white),
                    child: Icon(
                      Icons.add_a_photo_outlined,
                      size: 30.0,
                      color: Colors.black54,
                    ),
                  )
                : Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 1,
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 1,
                          offset: Offset(0, 3),
                        ),
                      ],
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2.5),
                      color: Colors.white,
                      image: DecorationImage(
                        image: FileImage(_image!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 600.0, left: 150.0),
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "SAVE",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
              ),
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              primary: Colors.blue,
              padding: EdgeInsets.symmetric(
                horizontal: 80.0,
                vertical: 13.0,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 600, left: 65),
          height: 50.0,
          width: 50.0,
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
            Icons.arrow_back,
            size: 24.0,
          ),
        ),
      ],
    );
  }
}
