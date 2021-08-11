import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imtihon2/ui/findHotel.dart';
import 'package:imtihon2/ui/mainPageUI.dart';

FirebaseAuth _authUser = FirebaseAuth.instance;

class VerifySms extends StatefulWidget {
  String verificationId;
  String? name;
  VerifySms(this.verificationId, this.name);
  @override
  State<StatefulWidget> createState() {
    return VerifySmsState();
  }
}

class VerifySmsState extends State<VerifySms> {
  String? password;
  var _formKey = GlobalKey<FormState>();
  TextEditingController smsCode = TextEditingController();
  var iconVisible = Icons.visibility_off;
  bool switchVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn.jhmrad.com/wp-content/uploads/top-house-designs-architectural-styles-ignite_312985.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 80.0, top: 30.0),
                    child: IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: Icon(
                        Icons.arrow_back,
                        size: 25.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 50.0, right: 50.0, bottom: 50.0),
              child: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    SizedBox(height: 50.0),
                    TextFormField(
                      controller: smsCode,
                      validator: (text) {
                        if (text!.length < 6) {
                          return "Please write code write";
                        }
                      },
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: switchVisible,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide:
                              BorderSide(color: Colors.red.shade900, width: 2),
                        ),
                        //labelText: "SMS",
                        labelStyle: TextStyle(color: Colors.teal),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (switchVisible == true) {
                                iconVisible = Icons.visibility;
                                switchVisible = false;
                              } else {
                                iconVisible = Icons.visibility_off;
                                switchVisible = true;
                              }
                            });
                          },
                          icon: Icon(
                            iconVisible,
                            size: 23.0,
                            color: Colors.teal,
                          ),
                        ),
                        hintText: "Enter SMS....",
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
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                       await _phoneVerify(context, widget.name);
                    },
                    child: Text(
                      "VERIFIY",
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
                      padding: EdgeInsets.symmetric(
                          horizontal: 63.0, vertical: 12.0),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _phoneVerify(BuildContext context, name) async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
          verificationId: widget.verificationId, smsCode: smsCode.text);
      var _authCredential =
      await _authUser.signInWithCredential(phoneAuthCredential);
      if (_authCredential.user != null) {
        await Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MainPageUI(name: name,)),
        );
      }
    }
  }
}
