import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';

class SpeechStatusWidget extends StatelessWidget {
  const SpeechStatusWidget({
    Key? key,
    required this.speech,
  }) : super(key: key);

  final SpeechToText speech;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      color: Theme.of(context).backgroundColor,
      child: Center(
        child: speech.isListening
            ? const Text(
          "Men  eshityapman...",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
            : const Text(
          'Start tugmasini bosing mo\'jiza yuz beradi...',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

