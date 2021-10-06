import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snack Bar"),
        centerTitle: true,
      ),
      body: const MySnackBar(),
    );
  }
}
//class (위젯) 분리

class MySnackBar extends StatelessWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("ElevatedButton is Clicked"),
            duration: Duration(seconds: 2),
            backgroundColor: Colors.green,
          ));

          //snapshot메모리의 변수를 가져오며 화면에 표시할때
        },
        child: const Text('Snack Bar Button'),
      ),
    );
  }
}

//안드로이드는 mvc -> view 와 controller를 구분해서 코딩
//mvvm 아이오에스
//Bloc PATTERN : 플러터, 클래스 분리해서 쓰는 것 (디자인 위젯들 나눠서 쓰자)