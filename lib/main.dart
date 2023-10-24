import 'package:flutter/material.dart';
import 'package:frequencia/provider/users.dart';
import 'package:frequencia/views/user_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers:[
        ChangeNotifierProvider(
        create: (ctx) => Users(),
        )
    ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: UserList(),
      ),
    );
  }
}
