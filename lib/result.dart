import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  bool isMale;
  int age;
  double result;
  Result(
      {Key? key, required this.isMale, required this.age, required this.result})
      : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  TextStyle txtStyle =
      const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Result",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Gender: ${widget.isMale ? "Male" : "Female"}",
              style: txtStyle,
            ),
            Text(
              "Age: ${widget.age}",
              style: txtStyle,
            ),
            Text(
              "Result: ${widget.result}",
              style: txtStyle,
            ),
          ],
        ),
      ),
    );
  }
}
