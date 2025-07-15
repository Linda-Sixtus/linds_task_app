import 'package:flutter/material.dart';

class S4524 extends StatelessWidget {
  const S4524({super.key});
  @override
  Widget build(BuildContext context) {
    return ShowHideNameWidget();
  }
}
class ShowHideNameWidget extends StatefulWidget {
  const ShowHideNameWidget({super.key});
  @override
  State<ShowHideNameWidget> createState() => _ShowHideNameWidgetState();
}
class _ShowHideNameWidgetState extends State<ShowHideNameWidget> {
  String _name = "";
  bool _toggle = false;

  void _toggleName() {
    setState(() {
      _toggle = !_toggle;
      _name = _toggle ? "Linda" : "";
    });
  }
  String getButtonLabel() {
    return _toggle ? "Name verstecken" : "Name anzeigen";
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
          onPressed: _toggleName,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            textStyle: const TextStyle(fontSize: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),‚
          ),
          child: Text(getButtonLabel()),
        ),
      ],
    );
  }
}