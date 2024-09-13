import 'package:apploja/pages/user_details.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import 'dart:developer';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 54, 160, 247),
          centerTitle: true,
          title: const Text("LOGIN")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "Tipo de Usuário?",
            style: TextStyle(fontSize: 24.0),
          ),
          const SizedBox(height: 30.0),
          InkWell(
            onTap: () {
              //Navigator.push(
              //  context,
              //MaterialPageRoute(
              // builder: (context) => const AdminHomePage()));
            },
            child: Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 0, 123, 255))),
              child: const Center(
                child: Text(
                  "Administrador",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30.0),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UserHomePage()));
            },
            child: Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 0, 123, 255))),
              child: const Center(
                child: Text(
                  "Usuário",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
