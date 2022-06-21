import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map? responseMAp;
  String apiUrl = "https://catfact.ninja/fact";
  Future getApiData() async {
    var response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      setState(() {
        responseMAp = jsonDecode(response.body);
      });
    }
  }

  @override
  void initState() {
    getApiData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: responseMAp == null
              ? const Center(child: CircularProgressIndicator())
              : Center(
                  child: Text(
                    responseMAp!["fact"],
                    style:
                        const TextStyle(fontSize: 22, color: Colors.blueAccent),
                  ),
                )),
    );
  }
}
