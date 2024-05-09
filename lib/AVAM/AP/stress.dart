import 'package:flutter/material.dart';
import 'package:wellness/AVAM/AP/BB.dart';

class Stress extends StatefulWidget {
  const Stress({super.key});

  @override
  State<Stress> createState() => _StressState();
}

class _StressState extends State<Stress> {

  List<Question> _questions = [
    Question(
      question: 'What is Stress',
      answer: '''
Stress is our body and mind’s natural reaction to potential threats, also known as stressors. Stress shows up in different ways, such as sweating, higher heart rate, racing thoughts, and trouble concentrating. Stress is neither good or bad: stress has helped humans survive and respond quickly to threats.
However, our bodies get overwhelmed when we stay stressed all the time, especially when there are many stressors at the same time.
Your body’s stress response is completely normal. It’s your subconscious looking out for you – but this backfires when you never get back to a relaxed state. 
''',
      img:'',
    ),
    Question(
      question: 'Understanding Stress',
      answer: '''
❖ Recognition: Whether or not you know it, your brain senses potential threat.
❖ Assessment: Your brain sizes up the threat to decide how to react.
❖ Mobilization: Critical thinking shuts down and your body gets charged to react to the threat.
❖ Response: You go into fight, flight, freeze or fawn to survive the threat.
❖ Return: Threat now gone, you go back to normal body and mind functioning.
      ''',
      img: 'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2Fsleeppic2.png?alt=media&token=068a0794-ef75-4fa3-9f88-129c9620f638',
    ),
    Question(
      question: 'Common stressors',
      answer:'''
❖ Experiencing a major life change such as moving, losing a loved one, starting a new job, having a child, or getting married.
❖ Experiencing poor physical health.
❖ Not having a network of support.
❖ Not getting enough sleep.
❖ Not eating well.
      ''',
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
