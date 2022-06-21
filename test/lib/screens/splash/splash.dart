import 'package:flutter/material.dart';

import '../auth_screens/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(
              height: 30,
            ),
            Icon(
              Icons.local_airport,
              size: 200,
              color: Colors.blueAccent,
            ),
            Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                "Welcome",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
