import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class Fb extends StatefulWidget {
//   @override
//   _FbState createState() => _FbState();
// }

class Fb extends StatelessWidget {
  
  String email = '';
  String password = '';
  


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
                child: Image(
                    fit: BoxFit.fitWidth,
                    image: NetworkImage(
                        'https://about.fb.com/wp-content/uploads/2018/11/fb-hero-image-001.jpeg?fit=1920%2C1080')),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'English . Bahasa Melayu . Chinese',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(209, 209, 224, 0.3)),
                width: 350,
                child: TextField(
                  decoration: InputDecoration(hintText: " Email address"),
                  onChanged: (String str) {
                    print(str);
                    email = str;
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(209, 209, 224, 0.3)),
                width: 350,
                child: TextField(
                  decoration: InputDecoration(hintText: " Password"),
                  onChanged: (String str) {
                    print(str);
                    password = str;
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  if (email == 'angelcham@yahoo.com' && password == '123') {
                    print("Login successfully");
                    //showDialog(context: context,
                   // builder: (context){return Dialog(shape: RoundRangeSliderThumbShape(),)})
                  } else
                    print("Failed to login");
                },

                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(63, 87, 147, 20),
                      borderRadius: BorderRadius.circular(5)),
                  width: 350,
                  child: Center(
                      child: Text('Log In',
                          style: TextStyle(fontSize: 20, color: Colors.white))),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Center(
                  child: Text(
                    'Forgotten password?',
                    style: TextStyle(color: Color.fromRGBO(63, 87, 147, 20)),
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(color: Colors.green),
                child: Center(
                  child: Text(
                    'Create New Facebook Account',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
