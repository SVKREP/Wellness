import 'package:flutter/material.dart';
import 'package:wellness/AVAM/AP/BB.dart';
class relaxation extends StatefulWidget {
  const relaxation({super.key});

  @override
  State<relaxation> createState() => _relaxationState();
}

class _relaxationState extends State<relaxation> {

  List<Question> _questions = [
    Question(
      question: 'What is relaxation ?',
      answer: '''
❖ Relaxation practices can reduce stress symptoms and help you enjoy a better quality of life. 
❖ Relaxation is a process that decreases the effects of stress on your mind and body.
❖ Relaxation techniques may include:
  ❖ Deep breathing 
  ❖ Massage
  ❖ Meditation
  ❖ Yoga 
    ''',
      img:'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2Fsleeppic1.png?alt=media&token=2e54ba85-693d-4e4a-a761-1f697cf8bb20',
    ),
    Question(
      question: 'Deep breathing',
      answer: '',
      img: 'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2Frelaxationpic1.png?alt=media&token=160168c0-c1d4-43ed-bfd5-8c7a2bbbb1f3',
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
