import 'package:flutter/material.dart';

class S4523 extends StatelessWidget {
  const S4523({super.key});
  @override
  Widget build(BuildContext context) {
    return MyNameWidget(); // Widget got usedge here
  }
}
// define the StatefulWidget "MyNameWidget"
class MyNameWidget extends StatefulWidget {
  const MyNameWidget({super.key});
  @override
  State<MyNameWidget> createState() => _MyNameWidgetState();
}
// define the (State) for   "MyNameWidget"
class _MyNameWidgetState extends State<MyNameWidget> {

String _name = "";
  // methode called, if button clicked
  void _showMyName() {
      _name = "Linda"; // set the name to Linda
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Text-Widget, das den aktuellen Zustand anzeigt
        Text(
          _name, // Text, if name is set..
          style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20), // distance btw. name and button
        ElevatedButton(
          onPressed:  _showMyName, // set the name to Linda // Ruft _showMyName auf, wenn geklickt
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            textStyle: const TextStyle(fontSize: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Abgerundete Ecken
            ),
          ),
          child: const Text("Name anzeigen"),
        ),
      ],
    );
  }
}