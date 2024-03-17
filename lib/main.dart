import 'package:flutter/material.dart';
import 'package:my_app/View/FavProductScreen.dart';
import 'package:my_app/ViewModel/FavoriteViewModel.dart';
import 'package:my_app/ViewModel/ProductViewModel.dart';
import 'package:my_app/main1.dart';
import 'package:my_app/View/ProductScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductViewModel()),
        ChangeNotifierProvider(create: (_) => FavoriteList()),
      ],
      child: MaterialApp(home: MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('create pro'),
      ),
      body: Column(children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text('enter pro name',
                  style: TextStyle(color: Colors.pink, fontSize: 18)),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text('enter pro price',
                  style: TextStyle(color: Colors.pink, fontSize: 18)),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text('enter pro color',
                  style: TextStyle(color: Colors.pink, fontSize: 18)),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Main1()),
            );
          },
          child: const Text('Enabled'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProductListView()));
          },
          child: const Text('Product '),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => FavProductListView()));
          },
          child: const Text('Fav Product '),
        ),
      ]),
    );
  }
}
