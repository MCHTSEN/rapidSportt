// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:myapp/features/nitrution/nitrution_logic.dart';

class NitrutionView extends ConsumerStatefulWidget {
  const NitrutionView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NitrutionViewState();
}

class _NitrutionViewState extends ConsumerState<NitrutionView> {
  late final NitrutionLogic nitrutionLogic;
  final PageController _pageController = PageController(viewportFraction: 0.9);

  @override
  void initState() {
    nitrutionLogic = NitrutionLogic();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> questions = nitrutionLogic.questions;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 95.w,
              height: 45.h,
              child: PageView.builder(
                controller: _pageController,
                itemCount: questions.length,
                onPageChanged: (index) {
                  setState(() {
                    nitrutionLogic.currentPageIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return buildQuestionCard(questions[index]);
                },
              ),
            ),
            const SizedBox(height: 16),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (String answer in questions[nitrutionLogic.currentPageIndex]
                    ['answers'])
                  AnswerButton(
                      onPressed: () {},
                      currentPageIndex: nitrutionLogic.currentPageIndex,
                      questions: questions,
                      pageController: _pageController,
                      answer: answer),
              ],
            ),
          ],
        ),
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
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

class AnswerButton extends StatefulWidget {
  final int currentPageIndex;
  final List<Map<String, dynamic>> questions;
  final PageController pageController;
  final String answer;
  final Function() onPressed;

  const AnswerButton(
      {super.key,
      required this.currentPageIndex,
      required this.questions,
      required this.pageController,
      required this.answer,
      required this.onPressed});

  @override
  State<AnswerButton> createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  late final NitrutionLogic nitrutionLogic;

  @override
  void initState() {
    super.initState();
    nitrutionLogic = NitrutionLogic();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 95.w,
      child: ElevatedButton(
        onPressed: () {
          nitrutionLogic.currentPageIndex++;
          widget.onPressed.call();

          if (widget.currentPageIndex < widget.questions.length - 1) {
            widget.pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut);
          }
        },
        child: Text(widget.answer),
      ),
    );
  }
}
