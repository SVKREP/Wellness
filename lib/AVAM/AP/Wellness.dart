import 'package:flutter/material.dart';
import 'package:wellness/AVAM/AP/BB.dart';
class Wellness extends StatefulWidget {
  const Wellness({Key? key}) : super(key: key);

  @override
  State<Wellness> createState() => _WellnessState();
}

class _WellnessState extends State<Wellness> {
  List<Question> _questions = [
    Question(
      question: 'What is Wellness?',
      answer: '',
      img:'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2Fwellnesspic1.png?alt=media&token=a1eb442f-d4f8-4971-85b0-b85ef8a69590',
    ),
    Question(
      question: 'improving wellness',
      answer: '',
      img: 'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2Fwellnesspic2.png?alt=media&token=5147e4ef-b4ba-4345-b22a-b73472df0a70',
    ),
    Question(
      question: 'What are risk factors for wellness?',
      answer: '''
A risk factor is something that MAY impact your health and wellness. For example:
  ❖ Poor mental health including 
    depression and substance abuse
  ❖ Family stress and conflictual 
    relationships
  ❖ A history of abuse or neglect
  ❖ Stressful life situations, such as 
    financial problems, a loved one's 
    death, physical or sexual abuse, 
    family violence, etc.
  ❖ Poor physical health
  ❖ Poor school and/or work skills
  ❖ Few friends or few healthy 
    relationships
      ''',
      img: '',
    ),
    Question(
      question: 'What are protective factors for wellness?',
      answer: '''
A protective factor is something that can help to prevent problems or help you to deal with problems better. For example:
  ❖ Access to help and support
	❖ Emotional self-regulation
	❖ Good coping skills and 
	  problem-solving skills
	❖ Good peer relationships
	❖ Supportive family relationships
      ''',
      img: '',
    ),
    Question(
      question: 'How do we maintain wellness?',
      answer: '''
We can take proactive steps to maintain our wellness. Here are some tips to help you get started: 
  ❖ Manage stress. Check-in with 
    yourself and notice your stress 
    levels. 
	❖	Pay attention to warning signs.
	  Learn what things trigger your 
	  stress. Make a plan so you know 
	  what to do when you are not 
	  feeling well. 
  ❖	Get help when you need it. 
    Reach out and ask for support 
    during difficult situations and 
    when you are not feeling well. 
  ❖	Take good care of yourself. Like:
      ❖	Get sufficient sleep
      ❖	Maintain healthy eating
      ❖	Exercise or engage in regular 
        physical activity 
      ❖	Build routines to organize your 
        day 
      ''',
      img: '',
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

