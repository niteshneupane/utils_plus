import 'package:example/data_model.dart';
import 'package:flutter/material.dart';
import 'package:utils_plus/utils_plus.dart';

import 'table_with_header.dart';

enum UserType {
  admin,
  superAdmin,
  normal;
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Utils Examples',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final userType = UserType.superAdmin;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "all utils".toCapitalizeEachWord,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 0),
        children: [
          TableWithHeader(
            headerTitle: "String",
            datas: [
              DataModel(name: "removeLast", input: "qwer"),
              DataModel(name: "toCapitalizeFirst", input: "hello"),
              DataModel(
                  name: "toCapitalizeEachWord", input: "capitalize each word"),
              DataModel(name: "wordToSentence", input: "appleBallCat"),
              DataModel(name: "formatEmailToStar", input: "test@gmail.com"),
              DataModel(name: "getFirstName", input: "John Doe"),
              DataModel(name: "getLastName", input: "John Doe"),
              DataModel(name: "toOneWord", input: "Hello World"),
              DataModel(name: "extention", input: "apple.txt"),
              DataModel(name: "fileName", input: "apple/ball.txt"),
              DataModel(name: "isPdf", input: "test.pdf"),
              DataModel(name: "isImage", input: "image.jpg"),
              DataModel(name: "isNotEmptyOrNull", input: ""),
              DataModel(name: "emoji", input: "NP"),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          TableWithHeader(
            headerTitle: "Date Format",
            datas: [
              DataModel(
                name: "isSameDate",
                input: DateTime.now(),
                inputString: "DateTime.now()",
              ),
              DataModel(
                name: "toFormattedString",
                input: DateTime.now(),
                inputString: "DateTime.now()",
              ),
              DataModel(
                name: "getDurationName",
                input: DateTime.now(),
                inputString: "DateTime.now()",
              ),
              DataModel(
                name: "getRelated",
                input: DateTime.now(),
                inputString: "DateTime.now()",
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          TableWithHeader(
            headerTitle: "Enum",
            datas: [
              DataModel(
                name: "toFormattedString",
                input: userType,
                inputString: "$userType",
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          TableWithHeader(
            headerTitle: "Numbers",
            datas: [
              DataModel(
                name: "toNonZero",
                input: 0,
                inputString: "0",
              ),
              DataModel(
                name: "formatTime",
                input: 404,
                inputString: "404",
              ),
              DataModel(
                name: "formatTimeToHrMinSec",
                input: 404,
                inputString: "404",
              ),
              DataModel(
                name: "formatTimeToHrMin",
                input: 404,
                inputString: "404",
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
