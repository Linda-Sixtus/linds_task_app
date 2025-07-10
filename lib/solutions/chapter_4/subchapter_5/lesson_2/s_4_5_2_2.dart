import 'package:flutter/material.dart';

class S4522 extends StatelessWidget {
  const S4522({super.key});
  @override
  Widget build(BuildContext context) {
    return MyStatelessWidget();
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Hello Linda"),
        const SizedBox(height: 20),
        ElevatedButton(
         child: Text("Klick mich"),
         onPressed: () {
           // To do
         },
        ),
      ]);
  }
}
