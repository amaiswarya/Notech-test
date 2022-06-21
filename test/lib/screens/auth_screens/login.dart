import 'package:flutter/material.dart';

import 'package:test/screens/home_screen/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
            child: Container(
                padding: const EdgeInsets.all(12),
                margin: EdgeInsets.all(12),
                child: SingleChildScrollView(
                  child: Form(
                      key: formkey,
                      child: Column(children: [
                        const SizedBox(
                          height: 80,
                        ),
                        Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8)),
                            alignment: Alignment.topCenter,
                            child: const Text(
                              "Citizens",
                              style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontStyle: FontStyle.italic),
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "write messages",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextFormField(
                            controller: name,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: InputDecoration(
                              focusColor: Colors.white,
                              prefixIcon: const Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 30,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 1.0),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              hintText: "Login",
                              hintStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.italic),
                              labelText: 'Login',
                              labelStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.italic),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter username';
                              }

                              return null;
                            },
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                            child: TextFormField(
                                controller: password,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Password is required';
                                  }
                                  if (value.trim().length < 8) {
                                    return 'Password must be at least 8 characters in length';
                                  }

                                  return null;
                                },
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                                decoration: InputDecoration(
                                  focusColor: Colors.white,
                                  prefixIcon: const Icon(
                                    Icons.lock,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.white, width: 1.0),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  fillColor: Colors.white,
                                  hintText: "Password",
                                  hintStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  labelText: 'Password',
                                  labelStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ))),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (formkey.currentState!.validate()) {
                              {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()));
                              }
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white, // background
                            onPrimary: Colors.white, // foreground
                          ),
                          child: const Text(
                            "LogIn",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text("Forgot Password?",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.white)),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "or login by",
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.white),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                            SizedBox(width: 15),
                            Icon(Icons.call, color: Colors.white),
                            SizedBox(width: 15),
                            Icon(Icons.message, color: Colors.white),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("Don't have an account?",
                                style: TextStyle(color: Colors.white)),
                            SizedBox(width: 5),
                            Text("Sign Up",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.white)),
                          ],
                        )
                      ])),
                ))));
  }
}
