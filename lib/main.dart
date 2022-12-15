import 'package:flutter/material.dart';
import 'package:quiz/jawaban.dart';
import 'pertanyaan.dart';
import 'hasil.dart';

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
  var _nilaitotal = 0;

  void jawabPertanyaan(int nilai) {
    _nilaitotal += nilai;
    setState(() {
      _indexPertanyaan += 1;
    });

    print('jawaban telah dipilih, index pertanyaan berikut=$_indexPertanyaan');
  }

  void restartQuiz() {
    setState(() {
      _indexPertanyaan = 0;
      _nilaitotal = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var listPertanyaan = const [
      {
        'teks': 'Apa warna bendera nasional Indonesia?',
        'jawab': [
          {'teks': 'putih merah', 'nilai': 0},
          {'teks': 'Merah Putih', 'nilai': 20},
          {'teks': 'biru putih', 'nilai': 0},
          {'teks': 'merah putih biru', 'nilai': 0}
        ]
      },
      {
        'teks': 'Apa nama ibukota provinsi Jawa Timur?',
        'jawab': [
          {'teks': 'Semarang', 'nilai': 0},
          {'teks': 'Jakarta', 'nilai': 0},
          {'teks': 'Samarinda', 'nilai': 0},
          {'teks': 'Surabaya', 'nilai': 10}
        ],
      },
      {
        'teks': 'Manakah wisata yang ada dikota batu?',
        'jawab': [
          {'teks': 'Pantai Kute', 'nilai': 0},
          {'teks': 'Taman Safari', 'nilai': 0},
          {'teks': 'Jatim Park 2', 'nilai': 10},
          {'teks': 'WBL', 'nilai': 0}
        ],
      },
      {
        'teks': 'Tanggal berapa hari kesaktian Pancasila?',
        'jawab': [
          {'teks': '2 Mei', 'nilai': 0},
          {'teks': '1 Juni', 'nilai': 10},
          {'teks': '20 Mei', 'nilai': 0},
          {'teks': '21 April', 'nilai': 0}
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QuizzApp'),
        ),
        body: Center(
            child: _indexPertanyaan <= listPertanyaan.length - 1
                ? Column(
                    children: [
                      Pertanyaan(
                          listPertanyaan[_indexPertanyaan]['teks'].toString()),
                      ...(listPertanyaan[_indexPertanyaan]['jawab']
                              as List<Map<String, Object>>)
                          .map(
                        (jawaban) {
                          return Jawaban(jawaban['teks'].toString(),
                              () => jawabPertanyaan(jawaban['nilai'] as int));
                        },
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
                  )
                : Hasil(_nilaitotal, restartQuiz)),
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
