import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:apploja/main.dart';
import 'package:apploja/model/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyB8WJjDE0hR7uljWRPFXZ5BdDNDzHCfp6k",
          authDomain: "dbcrudddmi-9e6de.firebaseapp.com",
          databaseURL: "https://dbcrudddmi-9e6de-default-rtdb.firebaseio.com",
          projectId: "dbcrudddmi-9e6de",
          storageBucket: "dbcrudddmi-9e6de.appspot.com",
          messagingSenderId: "202241292959",
          appId: "1:202241292959:web:cfc342bc0d3b699d9240aa"));

  //wait dotenv.load(fileName: "assets/.env");
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  static const primaryColor = Color.fromARGB(255, 86, 173, 255);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exemplo CRUD Firestore',
      theme: ThemeData(primaryColor: MyApp.primaryColor),
      initialRoute: '/',
      //Gerador de rotas - navegação entre as telas
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
