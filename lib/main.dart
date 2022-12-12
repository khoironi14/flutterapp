import 'package:flutter/material.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var _indexPertanyaan = 0;
  void jawabPertanyaan() {
    setState(() {
      _indexPertanyaan += 1;
    });

    print('jawaban telah dipilih, index pertanyaan berikut=$_indexPertanyaan');
  }

  @override
  Widget build(BuildContext context) {
    var listPertanyaan = const [
      'Apa warna bendera nasional Indonesia?',
      'Apa nama ibukota provinsi Jawa Timur?',
      'Manakah wisata yang ada dikota batu?',
      'Tanggal berapa hari kesaktian Pancasila?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QuizzApp'),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(listPertanyaan[_indexPertanyaan]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: jawabPertanyaan, child: Text('Jawaban 1')),
              ),
              ElevatedButton(
                  onPressed: jawabPertanyaan, child: Text('Jawaban 2')),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      print('ini jawaban 3');
                    },
                    child: Text('Jawaban 3')),
              ),
              Center(
                child: ElevatedButton(
                    onPressed: () => print('ini jawaban 4'),
                    child: Text('Jawaban 4')),
              ),
            ],
          ),
        ),
      ),
    );
  }
// class QuizApp extends StatelessWidget {
//   QuizApp({super.key});
//   var _indexPertanyaan = 0;
//   void jawabPertanyaan() {
//     _indexPertanyaan += 1;
//     print('jawaban telah dipilih, index pertanyaan berikut=$_indexPertanyaan');
//   }

//   @override
//   Widget build(BuildContext context) {
//     var listPertanyaan = const [
//       'Apa warna bendera nasional Indonesia?',
//       'Apa nama ibukota provinsi Jawa Timur?',
//       'Manakah wisata yang ada dikota batu?',
//       'Tanggal berapa hari kesaktian Pancasila?'
//     ];
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('QuizzApp'),
//         ),
//         body: Center(
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Text(listPertanyaan[_indexPertanyaan]),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: ElevatedButton(
//                     onPressed: jawabPertanyaan, child: Text('Jawaban 1')),
//               ),
//               ElevatedButton(
//                   onPressed: jawabPertanyaan, child: Text('Jawaban 2')),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: ElevatedButton(
//                     onPressed: () {
//                       print('ini jawaban 3');
//                     },
//                     child: Text('Jawaban 3')),
//               ),
//               Center(
//                 child: ElevatedButton(
//                     onPressed: () => print('ini jawaban 4'),
//                     child: Text('Jawaban 4')),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
}
