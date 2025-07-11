import 'package:flutter/material.dart';

class S4531 extends StatelessWidget {
  const S4531({super.key});
  @override
  Widget build(BuildContext context) {
   return blueContainers();
  }
}

Column blueContainers() {
  return Column(
    children: [
      Container(
        width: 100,
        height: 100,
        color: Colors.blueGrey,
      ),
      const SizedBox(height: 20),
      Container(
        width: 100,
        height: 100,
        color: Colors.blue,
      ),
      const SizedBox(height: 20),
      Container(
        width: 100,
        height: 100,
        color: Colors.cyan,
      ),
    ],
  );
}
