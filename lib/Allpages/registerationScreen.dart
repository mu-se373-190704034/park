import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:park/Allpages/loginScreen.dart';
import 'package:park/main.dart';

class registerationScreen extends StatelessWidget {
  static var idScreen;

  


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Padding(
      padding: const EdgeInsets.all(8.0),
  child: SingleChildScrollView(
  child: Column(
  children: [
  SizedBox(height: 100.0,),
  Image(image: AssetImage('images/Ispark_logo.png'),
  width: 420.0,
  height: 300.0,
  alignment: Alignment.center,
  ),
  Padding(padding: EdgeInsets.all(20.0),
  child: Column(
  children: [
  SizedBox(height: 1.0,),
  TextField(

  keyboardType: TextInputType.text,
  decoration: InputDecoration(
  labelText: "Name",
  labelStyle: TextStyle(
  fontSize: 20.0,
  )
  ),
  style: TextStyle(fontSize: 20.0),
  ),

  SizedBox(height: 1.0,),
  TextField(

  keyboardType: TextInputType.emailAddress,
  decoration: InputDecoration(
  labelText: "Email",
  labelStyle: TextStyle(
  fontSize: 20.0,
  )
  ),
  style: TextStyle(fontSize: 20.0),
  ),
  SizedBox(height: 1.0,),
  TextField(

  keyboardType: TextInputType.phone,
  decoration: InputDecoration(
  labelText: "Phone",
  labelStyle: TextStyle(
  fontSize: 20.0,
  )
  ),
  style: TextStyle(fontSize: 20.0),
  ),

  SizedBox(height: 2.0,),
  TextField(

  obscureText: true,
  keyboardType: TextInputType.emailAddress,
  decoration: InputDecoration(
  labelText: "Password",
  labelStyle: TextStyle(
  fontSize: 20.0,
  )
  ),
  style: TextStyle(fontSize: 20.0),
  ),
  SizedBox(height: 20.0),
  RaisedButton(
  color: Colors.yellow,
  textColor: Colors.blueGrey,
  child: Container(
  height: 55.0,
  child: Center(
  child: Text(
  'Create Account',
  style: TextStyle(
  fontSize: 20.0,
  ),
  ),
  ),
  ),
  shape: new RoundedRectangleBorder(
  borderRadius: new BorderRadius.circular(24.0),
  ),

    onPressed: () {  },
),
],
),
),
FlatButton(
onPressed: () {
Navigator.pushNamedAndRemoveUntil(context,loginScreen.idScreen, (route) => false);
},
child: Text(
'Already have an Account? Login Here',
),
),

],
),
),
),
);
}


