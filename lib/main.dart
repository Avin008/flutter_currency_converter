import 'package:flutter/material.dart';

main() {
  runApp(const MyAppState());
}

class MyAppState extends StatefulWidget {
  const MyAppState({super.key});
  @override
  State<StatefulWidget> createState() {
    return _MyAppPage();
  }
}

class _MyAppPage extends State {
  TextEditingController textEditingController = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text("Currency Converter"),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "INR ${result.toStringAsFixed(2)}",
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white60),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                keyboardType: const TextInputType.numberWithOptions(
                    decimal: true, signed: true),
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    prefixIcon: Icon(Icons.monetization_on_outlined,
                        color: Colors.black54),
                    hintText: "Please enter the amount in USD",
                    filled: true,
                    fillColor: Colors.white60,
                    iconColor: Colors.black54),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 45),
                      backgroundColor: Colors.black,
                      shadowColor: Colors.black,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                  onPressed: () => {
                        result = double.parse(textEditingController.text) * 82,
                        setState(() {})
                      },
                  child: const Text("Convert")),
            )
          ],
        ),
      ),
    ));
  }
}
