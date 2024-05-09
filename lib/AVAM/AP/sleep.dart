import 'package:flutter/material.dart';
import 'package:wellness/AVAM/AP/BB.dart';
class sleep extends StatefulWidget {
  const sleep({super.key});

  @override
  State<sleep> createState() => _sleepState();
}

class _sleepState extends State<sleep> {

  List<Question> _questions = [
    Question(
      question: 'Affects of Sleep on health',
      answer: '',
      img:'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2Fsleeppic1.png?alt=media&token=2e54ba85-693d-4e4a-a761-1f697cf8bb20',
    ),
    Question(
      question: 'Benefits of sleep',
      answer: '',
      img: 'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2Fsleeppic2.png?alt=media&token=068a0794-ef75-4fa3-9f88-129c9620f638',
    ),
    Question(
      question: 'Maintaining Sleep Hygiene',
      answer:'',
      img: 'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2FScreenshot%202024-05-02%20at%204.40.14%E2%80%AFAM.png?alt=media&token=c94a1a0c-0766-463e-aa1a-80dc087bc8a1',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            alignment: Alignment.center,
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              children: [
                // Your other widgets can go here

                SizedBox(height: 20),
                Image(
                  height: 180,
                  width: 180,
                  image: AssetImage('assets/logo.png'),
                ),
                SizedBox(height: 20),

                ListView.builder(
                  shrinkWrap: true,
                  itemCount: _questions.length,
                  itemBuilder: (context, index) {
                    return QuestionTile(
                      question: _questions[index],
                      onQuestionTapped: () {
                        setState(() {
                          _questions[index].isAnswered = true;
                        });
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
