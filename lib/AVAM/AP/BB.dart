import 'package:flutter/material.dart';

class Question {
  final String question;
  final String answer;
  final String img;
  bool isAnswered;

  Question({
    required this.question,
    required this.answer,
    required this.img,
    this.isAnswered = false,
  });
}

class QuestionTile extends StatelessWidget {
  final Question question;
  final VoidCallback onQuestionTapped;

  const QuestionTile({
    Key? key,
    required this.question,
    required this.onQuestionTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            question.question,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          trailing: question.isAnswered ? Icon(Icons.check_box) : null,
          onTap: () {
            onQuestionTapped();
            showModalBottomSheet(
              context: context,
              isScrollControlled: true, // Enable dragging to the top
              builder: (context) {
                return DraggableScrollableSheet(
                  initialChildSize: 0.9,
                  builder: (context, scrollController) {
                    return Container(
                      padding: EdgeInsets.all(16.0),
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
                        child: Column(
                          children: [
                            SizedBox(height: 40),
                            Image(
                              alignment: Alignment.center,
                              height: 180,
                              width: 180,
                              image: AssetImage('assets/logo.png'),
                            ),
                            SizedBox(height: 20),
                            if (question.answer.isNotEmpty)
                              Text(
                                question.answer,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            if (question.img.isNotEmpty)
                              Container(
                                child: Image.network(
                                  question.img,
                                  fit: BoxFit.cover, // Adjust this as needed
                                ),
                              ),
                          ],
                        ),
                      )

                    );
                  },
                );
              },
            );
          },
        ),
        Divider(),
      ],
    );
  }
}
