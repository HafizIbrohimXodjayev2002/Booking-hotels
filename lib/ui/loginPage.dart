import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:imtihon2/ui/verifiySms.dart';

FirebaseAuth _authUser = FirebaseAuth.instance;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var send = Firebase.initializeApp();
  var _formKey = GlobalKey<FormState>();
  String? name;
  String? phone;
  String? verificationId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   title: Text(
      //     "Loign",
      //   ),
      // ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width / 1,
                //color: Colors.green,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25.0),
                      bottomRight: Radius.circular(25.0)),
                  child: Image.network(
                    "https://myfancyhouse.com/wp-content/uploads/2012/07/House-GM1-A-Remarkable-Contemporary-Home-by-GM-Arquitectos-4.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                child: Text(
                  "Welcome back!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.teal),
                ),
              ),
              SizedBox(
                height: 6.0,
              ),
              Container(
                child: Text(
                  "Log in to your existant account of Rental House",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 13.0,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 35.0, left: 30.0, right: 30.0),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onSaved: (n1) {
                    name = n1;
                  },
                  validator: (state) {
                    return null;
                  },
                  decoration: InputDecoration(
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          BorderSide(color: Colors.red.shade900, width: 2),
                    ),
                    labelText: "Name",
                    labelStyle: TextStyle(color: Colors.teal),
                    prefixIcon: Icon(Icons.person_outline,
                        color: Colors.teal, size: 23),
                    hintText: "Enter name....",
                    hintStyle: TextStyle(color: Colors.teal),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          BorderSide(color: Colors.red.shade900, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          BorderSide(color: Colors.teal.shade900, width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(color: Colors.black12),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 35.0, left: 30.0, right: 30.0),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onSaved: (p) {
                    phone = p;
                  },
                  maxLength: 13,
                  initialValue: "+998",
                  decoration: InputDecoration(
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          BorderSide(color: Colors.red.shade900, width: 2),
                    ),
                    labelText: "Phone",
                    labelStyle: TextStyle(color: Colors.teal),
                    prefixIcon: Icon(Icons.phone_android_outlined,
                        color: Colors.teal, size: 23),
                    hintText: "Enter phone....",
                    hintStyle: TextStyle(color: Colors.teal),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          BorderSide(color: Colors.red.shade900, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          BorderSide(color: Colors.teal.shade900, width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(color: Colors.black12),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    await _authUser.verifyPhoneNumber(
                      phoneNumber: phone!,
                      verificationCompleted: (phoneAuthCredential) {},
                      verificationFailed: (firebaseAuthException) {},
                      codeSent: (verificationId, resendToken) async {
                        setState(() {
                          this.verificationId = verificationId;
                        });
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VerifySms(verificationId, name),
                          ),
                        );
                      },
                      codeAutoRetrievalTimeout: (verificationId) {},
                    );
                  }
                },
                child: Text(
                  "SEND",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.grey.withOpacity(0.5),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  primary: Colors.white70,
                  padding:
                      EdgeInsets.symmetric(horizontal: 63.0, vertical: 12.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
