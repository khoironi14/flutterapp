import 'package:flutter/material.dart';

class Hasil extends StatelessWidget {
  final int nilaiAkhir;
  final Function() restartQuiz;
  const Hasil(this.nilaiAkhir, this.restartQuiz);
  String get feedback {
    String teksFeedback;
    if (nilaiAkhir > 25) {
      teksFeedback = 'Skor = ${nilaiAkhir}, Selamat Nilai Anda hebat';
    } else if (nilaiAkhir > 15 && nilaiAkhir < 25) {
      teksFeedback = 'Skor = ${nilaiAkhir}, Nilai Cukup';
    } else {
      teksFeedback = 'Skor = ${nilaiAkhir}, Nilai masih kurang';
    }
    return teksFeedback;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            feedback,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        ElevatedButton(onPressed: restartQuiz, child: Text('Restart'))
      ],
    );
  }
}
