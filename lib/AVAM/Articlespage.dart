import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Articles Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Articles(),
    );
  }
}

class Article {
  final String title;
  final String content;
  final List<SubArticle> subArticles;

  Article(
      {required this.title,
      required this.content,
      this.subArticles = const []});
}

class SubArticle {
  final String title;
  final String? content;
  final String? imagePath;
  final List? points;

  SubArticle({required this.title, this.content, this.imagePath, this.points});
}

class Articles extends StatefulWidget {
  const Articles({super.key});

  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  List<Article> articles = [
    Article(
      title: 'Wellness',
      content: 'Content of Wellness',
      subArticles: [
        SubArticle(
            title: 'What is wellness',
            content: '',
            imagePath: 'assets/wellness1.1.jpeg'),
        SubArticle(
            title: 'Improving Wellness', imagePath: 'assets/wellness1.2.jpeg'),
        SubArticle(title: 'What are risk factors for wellness', content: '''
►	A risk factor is something that MAY impact your health and wellness. For example:
\t\t\t❖	Poor mental health including depression and substance abuse               
\t\t\t❖	Family stress and conflictual relationships        
\t\t\t❖	A history of abuse or neglect
\t\t\t❖	Stressful life situations, such as financial problems, a loved one's death, physical or sexual abuse, violence, etc.      
\t\t\t❖	Poor physical health 
\t\t\t❖	Poor school and/or work skills
\t\t\t❖	Few friends or few healthy relationships
'''),
        SubArticle(
            title: 'What are protective factors for wellness?',
            content:
                '''►	A protective factor is something that can help to prevent problems or help you to deal with problems better. 
            ❖	Access to help and support
            ❖	Emotional self-regulation
            ❖ Good coping skills and problem-solving skills
            ❖	Good peer relationships
            ❖ Supportive family relationships

                '''),
        // Add more sub-articles as needed
      ],
    ),
    // ... other articles with their sub-articles
    Article(title: "Emotions", content: "", subArticles: [
      SubArticle(title: 'What are emotions?', content: '''
o	Emotions are reactions to situations and are completely” normal”.
o Emotional experiences have three components: a subjective experience, a physiological response and a behavioral or expressive response.
o Basic emotions: anger, fear, surprise, disgust, joy and sadness
o There is an emotion for every possible human experience

''')
    ]),
    Article(title: "Stress", content: "", subArticles: [
      SubArticle(title: 'What is stress?', content: '''
►	What is stress? [link to https://www.austintexas.gov/sites/default/files/files/Health/Social%20Services/OVP/Address%20Your%20Stress%20Flyer_4.0_EN_2.0.pdf]
►	Is it stress or anxiety? [link to https://www.nimh.nih.gov/sites/default/files/documents/health/publications/so-stressed-out-fact-sheet/Im-So-Stressed-Out.pdf]
►	Learn more about stress through these videos:
  o	https://www.youtube.com/watch?v=CZTc8_FwHGM&authuser=0
  o	https://www.youtube.com/watch?v=WuyPuH9ojCE&authuser=0
''')
    ]),
    Article(title: "Relaxation", content: "", subArticles: [
      SubArticle(title: 'What is relaxation?', content: '''
►	Relaxation practices can reduce stress symptoms and help you enjoy a better quality of life. 
►	Relaxation is a process that decreases the effects of stress on your mind and body. 
►	Relaxation techniques may include:
►	Deep breathing [link to the breathing links]
►	Massage
►	Meditation
►	Yoga [link to the yoga and stretches link]
'''),
      SubArticle(title: 'Deep breating', content: '''
''')
    ]),
    Article(title: "Mindfulness", content: "", subArticles: [
      SubArticle(title: 'What is mindfulness?', content: '''
►	Mindfulness is explained as the act of being present and fully engaged with whatever is going on in that moment — free from distraction or judgment, and aware of our thoughts and feelings without getting caught up in them. 
►	Mindfulness allows us to 
►	Connect with the environment 
►	Connect with ourselves – mind/body/heart 

'''),
      SubArticle(title: 'Deep breating', content: '''

''')
    ])
  ];

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Articles'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.blue, Colors.green],
          ),
        ),
        child: ListView.builder(
          itemCount: articles.length,
          itemBuilder: (context, index) {
            return ArticleTile(
              article: articles[index],
              isSelected: selectedIndex == index,
              onExpansionChanged: (isExpanded) {
                setState(() {
                  selectedIndex = isExpanded ? index : -1;
                });
              },
            );
          },
        ),
      ),
    );
  }
}

class ArticleTile extends StatelessWidget {
  final Article article;
  final bool isSelected;
  final Function(bool) onExpansionChanged;

  const ArticleTile({
    Key? key,
    required this.article,
    required this.isSelected,
    required this.onExpansionChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: isSelected ? Colors.tealAccent[400]! : Colors.white,
          width: 3,
        ),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          backgroundColor: isSelected
              ? Colors.tealAccent[400]!.withOpacity(0.3)
              : Colors.white.withOpacity(0.3),
          title: Text(
            article.title,
            style: TextStyle(
              fontSize: 18,
              color: isSelected ? Colors.yellowAccent[400] : Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          onExpansionChanged: onExpansionChanged,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                article.content,
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            ...article.subArticles
                .map((subArticle) => SubArticleTile(subArticle: subArticle))
                .toList(),
          ],
        ),
      ),
    );
  }
}

class SubArticleTile extends StatefulWidget {
  final SubArticle subArticle;

  const SubArticleTile({Key? key, required this.subArticle}) : super(key: key);

  @override
  _SubArticleTileState createState() => _SubArticleTileState();
}

class _SubArticleTileState extends State<SubArticleTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white.withOpacity(0.7),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(
              widget.subArticle.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            trailing: IconButton(
              icon: Icon(isExpanded ? Icons.expand_less : Icons.expand_more),
              onPressed: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
            ),
          ),
          if (isExpanded)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: widget.subArticle.imagePath != null
                  ? Image.asset(widget.subArticle.imagePath!)
                  : Text(
                      widget.subArticle.content ?? '',
                      style: const TextStyle(fontSize: 14, color: Colors.black54),
                    ),
            ),
        ],
      ),
    );
  }
}
