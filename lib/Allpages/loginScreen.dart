import 'package:flutter/material.dart';
import 'package:park/Allpages/registerationScreen.dart';


class loginScreen extends StatelessWidget {
  static const String idScreen = 'login';
  const loginScreen({Key? key}) : super(key: key);

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
                    TextField(keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "Email",
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
                      onPressed: () {
                        print('loggedin button clicked');
                      },
                      child: Container(
                        height: 55.0,
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 20.0,

                            ),
                          ),
                        ),
                      ),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(24.0),
                      ),


                    )

                  ],



                ),


              ),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, registerationScreen.idScreen, (route) => false);
                },
                child: Text(
                    'Do not have an Account? Register Here.'
                ),
              ),

            ],

          ),
        ),
      ),

    );
  }
}
