import 'package:flutter/material.dart';

class QuestionV extends StatelessWidget {
  const QuestionV({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Soru-Cevap Kartları'),
        ),
        body: const QuestionAnswerPage(),
      ),
    );
  }
}

class QuestionAnswerPage extends StatefulWidget {
  const QuestionAnswerPage({super.key});

  @override
  _QuestionAnswerPageState createState() => _QuestionAnswerPageState();
}

class _QuestionAnswerPageState extends State<QuestionAnswerPage> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;

  List<Map<String, dynamic>> questions = [
    {
      'question': 'Soru 1: Flutter nedir?',
      'answers': ['A', 'B', 'C', 'D'],
      'correctAnswer': 'A',
    },
    {
      'question': 'Soru 1: Flutter nedir?',
      'answers': ['A', 'B', 'C', 'D'],
      'correctAnswer': 'A',
    },
    {
      'question': 'Soru 1: Flutter nedir?',
      'answers': ['A', 'B', 'C', 'D'],
      'correctAnswer': 'A',
    },

    // Diğer soruları da ekleyebilirsiniz.
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: questions.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPageIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return buildQuestionCard(questions[index]);
              },
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (String answer in questions[_currentPageIndex]['answers'])
                ElevatedButton(
                  onPressed: () {
                    // Do something when an answer is selected
                    // For simplicity, let's just move to the next question
                    if (_currentPageIndex < questions.length - 1) {
                      _pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut);
                    } else {
                      // Handle the end of the questions
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Quiz Completed'),
                          content: const Text(
                              'Congratulations! You have completed the quiz.'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  child: Text(answer),
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildQuestionCard(Map<String, dynamic> question) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              question['question'],
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
