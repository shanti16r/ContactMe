import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[100],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.purple[200],
                backgroundImage: AssetImage('images/img.jpg'),
              ),
              Text(
                'Shanti Ramakrishnan',
                    style: TextStyle(
                      fontFamily: 'ComforterBrush',
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
              ),
              ),
              Text('FLUTTER DEVELOPER',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'SourceSansPro',
                color: Colors.white,
                letterSpacing: 7.5,
              ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade400,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                color: Colors.white,
                child:ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal[900],
                  ),
                  title: Text(
                    'XXXXXXXXXXXX',
                    style: TextStyle(
                      color: Colors.teal[900],
                      fontSize: 16.0,
                      fontFamily:'SourceSansPro',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: _launchCaller,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                color: Colors.white,
                child:ListTile(
                  leading: Icon(
                    Icons.code,
                    color: Colors.teal[900],
                  ),
                  title: Text(
                    'github.com/shanti16r',
                    style: TextStyle(
                      color: Colors.teal[900],
                      fontSize: 16.0,
                      fontFamily:'SourceSansPro',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: _launchURL,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                color: Colors.white,
                child:ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal[900],
                  ),
                  title: Text(
                    'shanti16r@gmail.com',
                    style: TextStyle(
                      color: Colors.teal[900],
                      fontSize: 16.0,
                      fontFamily:'SourceSansPro',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: _launchMail,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_launchURL() async{
  const url = 'https://github.com/shanti16r';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchMail() async{
  const url = 'mailto: shanti16r@gmail.com';
  if (await canLaunch(url)){
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchCaller() async {
  const url = "tel:XXXXXXXXXXX";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
