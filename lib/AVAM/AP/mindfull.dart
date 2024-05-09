import 'package:flutter/material.dart';
import 'package:wellness/AVAM/AP/BB.dart';
class mindfullness extends StatefulWidget {
  const mindfullness({super.key});

  @override
  State<mindfullness> createState() => _mindfullnessState();
}

class _mindfullnessState extends State<mindfullness> {

  List<Question> _questions = [
    Question(
      question: 'What is mindfulness',
      answer: '''
❖ Mindfulness is explained as the act of being present and fully engaged with whatever is going on in that moment — free from distraction or judgment, and aware of our thoughts and feelings without getting caught up in them. 
❖ Mindfulness allows us to
  ❖ Connect with the environment
  ❖ Connect with ourselves 
    mind/body/heart
    ''',
      img:'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2Fmindpic1.png?alt=media&token=234663f7-27a3-443b-94d7-397831bc1d6b',
    ),
    Question(
      question: 'Practice Mindfulness',
      answer: '',
      img: 'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2Fmindpic2.png?alt=media&token=b9b09e72-1614-4419-b9df-0ce62762a983',
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
