import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownValue = 'USA';
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              decoration: new BoxDecoration(
                  color: Color.fromRGBO(39, 158, 153, 1),
                  borderRadius: new BorderRadius.only(
                      bottomLeft:  const  Radius.circular(50.0),
                      bottomRight: const  Radius.circular(50.0))
              ),
              height:400.0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.menu_outlined,
                          size: 30.0,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.notifications_outlined,
                          size: 30.0,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Covid-19',
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                    Container(
                      width: 150.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xffffffff),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8SM9kC1neO84zB_KVgVUVr6WVrR11t3V5nw&usqp=CAU'),

                            ),
                          ),
                          DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: dropdownValue,
                              icon: Icon(Icons.arrow_drop_down_rounded, color: Colors.grey[700], size: 40.0,),
                              iconSize: 24,
                              elevation: 16,
                              style: TextStyle(
                                  color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0
                              ),
                              onChanged: (String newValue) {
                                setState(() {
                                  dropdownValue = newValue;
                                });
                              },
                              items: <String>['USA', 'IND', 'UK', 'UAE']
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              })
                                  .toList(),
                            ),
                          ),
                        ],
                      ),
                    ),

                      ],
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Are you feeling sick?',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        Text(
                          'If you feel sick with any of covid-19 symptoms please call or SMS us immediately for help.',
                          style: TextStyle(
                            color: Color.fromRGBO(140, 237, 233, 1),
                            fontSize: 17.0,
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FlatButton(
                              textColor: Color(0xFF6200EE),
                              color: Color.fromRGBO(76, 217, 123, 1),
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.phone, color: Colors.white,size: 20.0,),
                                    SizedBox(width: 10.0,),
                                    Text("Call Now",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold
                                    ),
                                    ),
                                  ],
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  side: BorderSide(color: Color.fromRGBO(76, 217, 123, 1))
                              ),
                            ),
                            FlatButton(
                              textColor: Color(0xFF6200EE),
                              color: Colors.orange,
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.sms, color: Colors.white,size: 20.0,),
                                    SizedBox(width: 10.0,),
                                    Text("Send SMS",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  side: BorderSide(color: Colors.orange),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Prevention',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0,
                    ),
                  ),

                  SizedBox(height: 20.0,),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 105.0,
                                    width: 105.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(52.5),
                                      color: Color.fromRGBO(114, 212, 207, 0.4),
                                    ),
                                  ),
                                  Image(image: AssetImage("assets/images/covid3.png"),
                                    height: 100.0,
                                  ),
                                ],
                              ),
                              SizedBox(height: 15.0,),
                              Text(
                                'Avoid close contact',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 105.0,
                                    width: 105.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(52.5),
                                      color: Color.fromRGBO(114, 212, 207, 0.4),
                                    ),
                                  ),
                                  Image(image: AssetImage("assets/images/covid2.png"),
                                    height: 100.0,
                                  ),
                                ],
                              ),
                              SizedBox(height: 15.0,),
                              Text(
                                'Clean your hands often',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 105.0,
                                    width: 105.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(52.5),
                                      color: Color.fromRGBO(114, 212, 207, 0.4),
                                    ),
                                  ),
                                  Image(image: AssetImage("assets/images/covid1.png"),
                                    height: 100.0,
                                  ),
                                ],
                              ),
                              SizedBox(height: 15.0,),
                              Text(
                                'Wear a facemask',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 60.0,),
                  Stack(
                    children: [
                      Container(
                        height: 170.0,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(39, 158, 153, 1),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(0.3),
                          child: Row(
                            children: [
                              SizedBox(width: MediaQuery.of(context).size.width/3.5,),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 30.0,),
                                    Text(
                                      "Do your own test!",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 20.0,),
                                    Text(
                                      "Follow the instructions to do your own test.",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white60,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Image.asset("assets/images/covid4.png",height: 190,),
                    ],
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

