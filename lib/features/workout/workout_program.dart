import 'dart:math';

import 'package:flutter/material.dart';

class WorkoutSurveyPage extends StatefulWidget {
  const WorkoutSurveyPage({super.key});

  @override
  _WorkoutSurveyPageState createState() => _WorkoutSurveyPageState();
}

class _WorkoutSurveyPageState extends State<WorkoutSurveyPage> {
  int currentPage = 0;

  late final PageController controller;

  List<String> answers = List.filled(5, ''); // Declare the answers list

  List<String> questions = [
    'Cinsiyetiniz nedir?',
    'Ne kadar zamandır sporla uğraşıyorsunuz?',
    'Haftada kaç gün antrenmanla uğraşıyorsunuz?',
    'Ne tür antrenmanlardan hoşlanıyorsunuz?',
    'Spor salonuna gidiyor musunuz?',
  ];

  List<List<String>> answerOptions = [
    ['Erkek', 'Kadın', 'Diğer'],
    ['Yeni başladım', '1-2 yıl', '3-5 yıl', '5 yıldan fazla'],
    ['1-2 gün', '3-4 gün', '5-6 gün', 'Haftada her gün'],
    ['Kardiyo', 'Ağırlık antrenmanı', 'Esneklik egzersizleri', 'Grup dersleri'],
    ['Evet', 'Hayır'],
  ];

  final List<WorkoutProgram> workoutPrograms = [
    WorkoutProgram(
      "Kardiyo ve Ağırlık Antrenmanı",
      [
        "Squats: 4 set x 10 tekrar",
        "Leg Press: 3 set x 12 tekrar",
        "Shoulder Press: 3 set x 15 tekrar",
        "Lateral Raises: 4 set x 12 tekrar",
      ],
    ),
    WorkoutProgram(
      "Kuvvet ve Esneklik Antrenmanı",
      [
        "Squats: 5 set x 5 tekrar",
        "Bench Press: 5 set x 5 tekrar",
        "Barbell Rows: 4 set x 8 tekrar",
        "Overhead Press: 3 set x 10 tekrar",
      ],
    ),
    WorkoutProgram(
      "Vücut Ağırlığı ve Kardiyo Egzersizleri",
      [
        "Pull-Ups: 4 set x maksimum tekrar",
        "Push-Ups: 4 set x maksimum tekrar",
        "Bodyweight Squats: 3 set x 15 tekrar",
        "Plank: 3 set x 1 dakika",
      ],
    ),
  ];

  @override
  void initState() {
    super.initState();
    controller = PageController(keepPage: false, initialPage: currentPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Antrenman Anketi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: PageView.builder(
                controller: controller,
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  return buildQuestionPage(index);
                },
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                if (currentPage == questions.length - 1) {
                  showRandomWorkoutDialog(context);
                } else {
                  controller.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease);
                  goToNextPage();
                }
              },
              child: Text(currentPage == questions.length - 1
                  ? 'Tamamla'
                  : 'İleri Git'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildQuestionPage(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          questions[index],
          style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16.0),
        buildAnswerOptions(index),
      ],
    );
  }

  Widget buildAnswerOptions(int index) {
    return Column(
      children: answerOptions[index].map((option) {
        return RadioListTile<String>(
          title: Text(option),
          value: option,
          groupValue: answers[index],
          onChanged: (value) {
            setState(() {
              goToNextPage();
              answers[index] = value!;
            });
          },
        );
      }).toList(),
    );
  }

  void goToNextPage() {
    if (currentPage < questions.length - 1) {
      setState(() {
        currentPage++;
      });
    }
  }

  void showRandomWorkoutDialog(BuildContext context) {
    final Random random = Random();
    final int randomIndex = random.nextInt(workoutPrograms.length);
    final WorkoutProgram selectedProgram = workoutPrograms[randomIndex];

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(selectedProgram.title),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Egzersizler:'),
              for (String exercise in selectedProgram.exercises)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(exercise),
                ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Kapat'),
            ),
          ],
        );
      },
    );

    void showSurveyCompletionDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Anket Tamamlandı'),
            content:
                const Text('Teşekkür ederiz! Anketi başarıyla tamamladınız.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Tamam'),
              ),
            ],
          );
        },
      );
    }
  }
}

class WorkoutProgram {
  final String title;
  final List<String> exercises;

  WorkoutProgram(this.title, this.exercises);
}
