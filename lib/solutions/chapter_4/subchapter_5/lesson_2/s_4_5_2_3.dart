import 'package:flutter/material.dart';

class S4523 extends StatelessWidget {
  const S4523({super.key});
  @override
  Widget build(BuildContext context) {
    return MyNameWidget();
  }
}
class MyNameWidget extends StatefulWidget {
  const MyNameWidget({super.key});
  @override
  State<MyNameWidget> createState() => _MyNameWidgetState();
}
class _MyNameWidgetState extends State<MyNameWidget> {
  String _name = "";
  void _showMyName() {
    setState(() {  // WICHTIG: setState nicht vergessen!
      _name = "Linda";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          _name,
          style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: _showMyName,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            textStyle: const TextStyle(fontSize: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text("Name anzeigen"),
        ),
      ],
    );
  }
}