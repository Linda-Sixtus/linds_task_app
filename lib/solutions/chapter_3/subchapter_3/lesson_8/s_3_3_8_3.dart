import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

FormattedTime formatSeconds(int seconds) {
  // Lösung hier einfügen
  final int hours = seconds ~/ 3600;
  final int minutes = (seconds % 3600) ~/ 60;
  final int remainingSeconds = seconds % 60;
  return FormattedTime(
    hours: hours,
    minutes: minutes,
    seconds: remainingSeconds,
  );
}

  // return FormattedTime(hours: 0, minutes: 0, seconds: 0); // Beispielwert
  // - throw UnimplementedError(); --- IGNORE --- 
  //  // Hier die Logik zur Umwandlung der Sekunden in Stunden, Minuten und Sekunden einfügen




class FormattedTime {
  final int hours;
  final int minutes;
  final int seconds;

  const FormattedTime({
    required this.hours,
    required this.minutes,
    required this.seconds,
  });

  @override
  String toString() {
    String result = "";
    if (hours > 0) {
      result += "$hours Stunden ";
    }
    if (minutes > 0) {
      result += "$minutes Minuten ";
    }
    if (seconds > 0) {
      result += "$seconds Sekunden";
    }
    return result;
  }
}

class S3383 extends StatefulWidget {
  const S3383({super.key});

  @override
  State<S3383> createState() => _S3383State();
}

class _S3383State extends State<S3383> {
  final TextEditingController _inputController = TextEditingController();
  String? output;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _inputController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Sekunden',
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Text(
          output?.toString() ?? '',
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(
          height: 32,
        ),
        ElevatedButton(
          onPressed: () {
            final input = int.tryParse(_inputController.text);
            if (input == null) {
              setState(() {
                output = null;
              });
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Bitte eine Anzahl an Sekunden eingeben.'),
                ),
              );
              return;
            }
            setState(() {
              output = formatSeconds(input).toString();
            });
          },
          child: const Text('Formatiere'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }
}
