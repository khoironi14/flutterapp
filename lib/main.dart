import 'package:flutter/material.dart';
import 'package:quiz/jawaban.dart';
import 'pertanyaan.dart';

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
      {
        'teks': 'Apa warna bendera nasional Indonesia?',
        'jawab': [
          'putih merah',
          'Merah Putih',
          'biru putih',
          'merah putih biru'
        ]
      },
      {
        'teks': 'Apa nama ibukota provinsi Jawa Timur?',
        'jawab': ['Semarang', 'Jakarta', 'Samarinda', 'Surabaya'],
      },
      {
        'teks': 'Manakah wisata yang ada dikota batu?',
        'jawab': ['Pantai Kute', 'Taman Safari', 'Jatim Park 2', 'WBL'],
      },
      {
        'teks': 'Tanggal berapa hari kesaktian Pancasila?',
        'jawab': ['2 Mei', '1 Juni', '20 Mei', '21 April'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QuizzApp'),
        ),
        body: Center(
          child: Column(
            children: [
              Pertanyaan(listPertanyaan[_indexPertanyaan]['teks'].toString()),
              ...(listPertanyaan[_indexPertanyaan]['jawab'] as List<String>)
                  .map(
                (jawaban) => Jawaban(jawaban, jawabPertanyaan),
              )
              // Padding(
              //   padding: const EdgeInsets.all(16.0),
              //   child: Text(listPertanyaan[_indexPertanyaan]),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: ElevatedButton(
              //       onPressed: jawabPertanyaan, child: Text('Jawaban 1')),
              // ),
              // ElevatedButton(
              //     onPressed: jawabPertanyaan, child: Text('Jawaban 2')),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: ElevatedButton(
              //       onPressed: () {
              //         print('ini jawaban 3');
              //       },
              //       child: Text('Jawaban 3')),
              // ),
              // Center(
              //   child: ElevatedButton(
              //       onPressed: () => print('ini jawaban 4'),
              //       child: Text('Jawaban 4')),
              // ),
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
