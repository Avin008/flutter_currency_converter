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
                  color: Colors.white),
            ),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon:
                      Icon(Icons.monetization_on_outlined, color: Colors.black),
                  hintText: "Enter Amount in INR",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 20, color: Colors.black))),
            ),
            ElevatedButton(
              onPressed: () => {},
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black)),
              child: const Text(
                "Convert",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
