import 'package:flutter/material.dart';
import 'package:wellness/AVAM/AP/BB.dart';

class Emotions extends StatefulWidget {
  const Emotions({super.key});
  @override
  State<Emotions> createState() => _EmotionsState();
}

class _EmotionsState extends State<Emotions> {

  List<Question> _questions = [
    Question(
      question: 'What is emotions?',
      answer:'''
❖ Emotions are reactions to situations and are completely normal.
❖ Emotional experiences have three components: a subjective experience, a physiological response and a behavioral or expressive response.
❖ Basic emotions: anger, fear, surprise, disgust, joy and sadness
❖ There is an emotion for every possible human experience
    ''',
      img:'',
    ),
    Question(
      question: 'Emotions Wheel',
      answer: '''
We can feel countless emotions throughout the day
❖ There are times when we might have a hard time articuluating or naming exactly how we feel.
❖ An emotion wheel is a circular graph that depicts the range of human emotions and how they relate to one another. It was created by psychologist Robert Plutchik, Ph. D.,
❖	In the center of the wheel are our basic emotions: sadness, disgust, anger, anticipation, joy, fear, surprise, and trust. 
❖	Moving to the outer edges are less intense versions of these core emotions. 
❖	Secondary and tertiary emotions are more specific emotions and combinations of primary emotions.
❖	Primary and secondary emotions:
  ❖	Sadness: includes grief, 
    pensiveness, regret, hurt, 
    rejection, melancholy, 
    discouragement, and depressed
  ❖	Disgust: includes hatred, 
    disinterest, disapproval,
    revulsion, dismissiveness, 
    repulsion, and critical
  ❖	Anger: includes rage, irritation, 
    frustration, insulted, bitterness, 
    mocked, violated, jealous, 
    offended, and provoked
  ❖	Anticipation: includes interest, 
    vigilance, excitement, awareness, 
    impatience, expectant, harried, 
    and cautious
  ❖	Joy: includes happiness, 
    ecstasy, elation, pleasure, 
    triumph, satisfaction, 
    contentment, pride, and 
    serenity
  ❖	Fear: includes terror, caution, 
    apprehension, concern, worry, 
    anxiety, stressed, and nervous
  ❖	Surprise: includes amazement, 
    distraction, wonder, awe, 
    amusement, shock, 
    speechlessness, and disbelief
  ❖	Trust: includes safety, 
    vulnerability, hopeful, 
    positive, secure, supported, 
    comfortable, and relaxed
❖	In everyday interactions, we naturally make use of these distinctions to pinpoint our feelings.
❖	How to use the emotions wheel:
	1. Identify the emotion closest
	   to what you are feeling 
	   (center emotions are more 
	   intense)
	2. Try to figure out the trigger, 
	   what triggered that emotion?
	3. Make connections. Notice that 
	   certain emotions lead to other 
	   emotions. For example, a happy 
	   and secure relationship can 
	   evoke emotions such as trust 
	   and joy which can leave you 
	   feeling optimistic 
	4. Make changes. Once you 
	   identify your emotions and 
	   triggers this can help you 
	   find ways to cope and work 
	   through them. 
      ''',
      img: 'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2Femotionspic1.png?alt=media&token=b42b365f-9e03-42a7-a46d-10146321b75c',
    ),
    Question(
      question: 'How do we work with emotions?',
      answer: '''
❖	By acknowledging our emotions, we can work with them. 
❖	How one thinks about the situation affects how one feels about the situation.
❖	Feelings are experienced in the body.
❖	Feelings are not permanent. They will naturally fade over time.  
❖	Being well involves the skill to release stressful emotions, so that mind and body can be calm, so that the person is open to situations that stimulate happiness, joy, and contentment.
      ''',
      img: 'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2Femotionspic2.png?alt=media&token=74b4af47-502d-4791-b1c2-deb09c73bdba',
    ),
    Question(
      question: 'How do we manage emotions?',
      answer: '',
      img: 'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2Femotionspic3.png?alt=media&token=2aa588ba-ff04-4d21-ad27-ccafe886627f',
    ),
    Question(
      question: 'What is emotional awareness?',
      answer: '''
❖	Emotional awareness is being able to identify the emotions you are experiencing at any given time. 
❖	Levels of emotional awareness: 
      ''',
      img: 'https://firebasestorage.googleapis.com/v0/b/fbdemo-627ff.appspot.com/o/images%2Femotionspic4.png?alt=media&token=9d636654-9a22-434c-8369-494d07ce4590',
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
