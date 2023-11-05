class Question {
  final String question;
  final List<String> answers;
  final String correctAnswer;

  Question(this.question, this.answers, this.correctAnswer);
}

List<Question> questions = [
  Question(
    "Aşağıdakilerden hangisi bir widget türüdür",
    ["Stateful", "Constructor", "Class", "Const", "Deneme"],
    'A)Stateful',
  ),
  Question(
    'Flutter hangi programlama dili ile geliştirilmiştir?',
    ['A) Dart', 'B) Kotlin', 'C) Java', 'D) C++', 'E) Swift'],
    'A) Dart',
  ),
  Question(
    'Flutter hangi platformlarda çalışır?',
    ['A) Android', 'B) iOS', 'C) Web', 'D) macOS', 'E) Tümü'],
    'E) Tümü',
  ),
  Question(
    'Flutter\'da bir widget\'ı yatay olarak sıralamak için kullanılan widget hangisidir?',
    ['A) Column', 'B) Row', 'C) ListView', 'D) Grid', 'E) Container'],
    'B) Row',
  ),
  Question(
    'Flutter paketlerini yönetmek için kullanılan araç hangisidir?',
    ['A) Dart', 'B) Flutter', 'C) DartPad', 'D) Pub', 'E) Git'],
    'D) Pub',
  ),
  Question(
    'Flutter\'da bir widgetı inşa etmek için kullanılan method hangisidir?',
    [
      'A) build()',
      'B) create()',
      'C) construct()',
      'D) generate()',
      'E) initialize()'
    ],
    'A) build()',
  ),
  Question(
    'Flutter\'da hangi sınıf, özel şekiller oluşturmak için kullanılır?',
    [
      'A) ShapePainter',
      'B) CustomPainter',
      'C) ShapeBuilder',
      'D) PaintCanvas',
      'E) CustomBuilder'
    ],
    'B) CustomPainter',
  ),
  Question(
    'Flutter\'da durum yönetimini sağlamak için kullanılan sınıf hangisidir?',
    [
      'A) StatefulWidget',
      'B) StatefulWidget',
      'C) SingleTickerProviderStateMixin',
      'D) StatefulWidgetMixin',
      'E) StatelessComponent'
    ],
    'A) StatefulWidget',
  ),
  Question(
    'Flutter\'da hangi sınıf, dokunmatik girişi işlemek için kullanılır?',
    [
      'A) TouchHandler',
      'B) InputProcessor',
      'C) GestureDetector',
      'D) GestureResolver',
      'E) TouchListener'
    ],
    'C) GestureDetector',
  ),
  Question(
    'Flutter\'da animasyon oluşturmak için kullanılan sınıf hangisidir?',
    [
      'A) AnimationController',
      'B) AnimationMaker',
      'C) AnimateWidget',
      'D) TweenAnimationBuilder',
      'E) AnimatedPainter'
    ],
    'A) AnimationController',
  ),
  Question(
    'Flutter\'da hangi paket, cihazın konum verilerini almak için kullanılır?',
    [
      'A) LocationService',
      'B) GPSProvider',
      'C) Geolocator',
      'D) LocationFinder',
      'E) DeviceLocation'
    ],
    'C) Geolocator',
  ),
];
