import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
            const Text(
              "0",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white60),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const TextField(
                keyboardType: TextInputType.numberWithOptions(
                    decimal: true, signed: true),
                decoration: InputDecoration(
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
                  onPressed: () => {},
                  child: const Text("Convert")),
            )
          ],
        ),
      ),
    ));
  }
}
