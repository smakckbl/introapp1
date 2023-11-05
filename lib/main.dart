import 'package:flutter/material.dart';
import 'package:introapp1/data/questions.dart';

void main() {
  runApp(MaterialApp(home: QuizScreen()));
}

// boilerplate => basmakalıp
class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key}); // 1. gereksinim

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  List<String> selectedAnswers = [];

  void startQuiz() {
    setState(() {
      currentQuestionIndex = 0;
      selectedAnswers.clear();
    });
  }

  void finishQuiz() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => QuizResultPage(selectedAnswers),
      ),
    );
  }

  void handleAnswer(String answer) {
    setState(() {
      selectedAnswers.add(answer);
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        finishQuiz();
      }
    });
  }

// 2. gereksinim
  // Hot Reload => Restarta gerek kalmadan (spesifik durumlar hariç)
  // değişikliklerin görünmesi.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 228, 77),
      appBar: AppBar(
        title: Text('Quiz App',
            style: const TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/quiz-logo.png",
              width: 150,
            ),
            if (currentQuestionIndex == -1)
              ElevatedButton(
                onPressed: () => startQuiz(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: const Color.fromARGB(255, 241, 241, 241),
                ),
                child: const Text(
                  "Quize Başla",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              )
            else if (currentQuestionIndex < questions.length)
              Column(
                children: [
                  Text(questions[currentQuestionIndex].question),
                  SizedBox(height: 20),
                  for (String answer in questions[currentQuestionIndex].answers)
                    ElevatedButton(
                      onPressed: () => handleAnswer(answer),
                      child: Text(answer),
                    ),
                  if (selectedAnswers.isNotEmpty)
                    Text("Cevabınız: ${selectedAnswers.last}"),
                  if (selectedAnswers.isNotEmpty)
                    Text(
                        "Doğru Cevap: ${questions[currentQuestionIndex].correctAnswer}"),
                ],
              )
            else
              ElevatedButton(
                onPressed: () => finishQuiz(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: const Color.fromARGB(255, 241, 241, 241),
                ),
                child: const Text(
                  "Quizi Bitir",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class QuizResultPage extends StatelessWidget {
  final List<String> selectedAnswers;

  QuizResultPage(this.selectedAnswers);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Sonuçları'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Quiz Sonuçları'),
            Text('Toplam Soru Sayısı: ${questions.length}'),
            Text('Doğru Cevap Sayısı: ${calculateScore()}'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Ana Sayfaya Dön'),
            ),
          ],
        ),
      ),
    );
  }

  int calculateScore() {
    int correctAnswers = 0;
    for (int i = 0; i < questions.length; i++) {
      if (questions[i].correctAnswer == selectedAnswers[i]) {
        correctAnswers++;
      }
    }
    return correctAnswers;
  }
}

// SABIT UI

// StatefullWidget

// 2 class
// Widget - State
//class QuizScreen extends StatefulWidget {
//const QuizScreen({super.key});

// @override
// State<QuizScreen> createState() {
//   return _QuizState();
// }
//}

// _State
//class _QuizState extends State<QuizScreen> {
// String text = "Aşağıdakilerden hangisi bir widget türüdür";

//void changeText() {
//  setState(() {
//   text = "Yeni Değer";
// });
//}

//@override
//Widget build(BuildContext buildContext) {
//return Scaffold(
// body: Center(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
//children: [
//Text(questions[0].question),
//...questions[0].answers.map((answer) {
// return ElevatedButton(
//   onPressed: () {
//   changeText();
//},
//child: Text(answer));
//})
//],class QuizResultPage extends StatelessWidget {
 // ),
//)
//);
//}