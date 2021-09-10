import 'package:flutter/material.dart';
import 'package:flutter_shamo_ecommerce/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            'FANI DWI CAHYO',
            style:
                secondaryTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
          ),
        ),
      ),
    );
  }
}
