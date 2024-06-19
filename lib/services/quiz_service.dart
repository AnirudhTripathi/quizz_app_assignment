import 'package:get/get.dart';

import '../models/question_model.dart';

class QuizService extends GetxService {
  Future<List<QuestionModel>> getQuizQuestions(String topic) async {
    try {
      await Future.delayed(const Duration(seconds: 1));

      Map<String, List<QuestionModel>> quizData = getData();
      if (quizData.containsKey(topic)) {
        return quizData[topic]!.take(10).toList();
      } else {
        throw Exception('Quiz data not found for topic: $topic');
      }
    } catch (e) {
      // print("Error fetching quiz questions: $e");
      rethrow;
    }
  }

  Map<String, List<QuestionModel>> getData() {
    return {
      "Flutter": [
        QuestionModel(
          question: 'What is Flutter?',
          options: [
            'A programming language',
            'A mobile development framework',
            'A database management system',
            'A cloud platform'
          ],
          correctAnswerIndex: 1,
        ),
        QuestionModel(
          question: 'Which programming language is used by Flutter?',
          options: ['Java', 'Kotlin', 'Swift', 'Dart'],
          correctAnswerIndex: 3,
        ),
        QuestionModel(
          question: 'What is a StatelessWidget in Flutter?',
          options: [
            'A widget that can change its state',
            'A widget that rebuilds every time data changes',
            'A widget that cannot change its state after being built',
            'A widget used for navigation'
          ],
          correctAnswerIndex: 2,
        ),
        QuestionModel(
          question: 'What is a widget in Flutter?',
          options: [
            'A data structure',
            'A collection of methods',
            'A UI element',
            'A type of database'
          ],
          correctAnswerIndex: 2,
        ),
        QuestionModel(
          question: 'How do you create a Stateless widget in Flutter?',
          options: [
            'By extending StatelessWidget',
            'By implementing StatelessInterface',
            'By inheriting from Widgetless',
            'By using the Stateless keyword'
          ],
          correctAnswerIndex: 0,
        ),
        QuestionModel(
          question: 'Which widget is used for layout in Flutter?',
          options: ['Row', 'Column', 'Stack', 'All of the above'],
          correctAnswerIndex: 3,
        ),
        QuestionModel(
          question: 'How do you add padding in Flutter?',
          options: [
            'Using the Padding widget',
            'Using the Margin widget',
            'Using the Spacer widget',
            'Using the Container widget'
          ],
          correctAnswerIndex: 0,
        ),
        QuestionModel(
          question:
              'What is the purpose of the main function in a Flutter app?',
          options: [
            'To set up the app\'s routing',
            'To execute the app',
            'To define app themes',
            'To create the initial state'
          ],
          correctAnswerIndex: 1,
        ),
        QuestionModel(
          question: 'How do you handle asynchronous operations in Flutter?',
          options: [
            'Using async/await',
            'Using threads',
            'Using FutureBuilder',
            'Using StreamBuilder'
          ],
          correctAnswerIndex: 0,
        ),
        QuestionModel(
          question:
              'Which widget allows you to build responsive layouts in Flutter?',
          options: ['Container', 'Flexible', 'Scaffold', 'MediaQuery'],
          correctAnswerIndex: 3,
        ),
      ],
      "React Native": [
        QuestionModel(
          question: 'What is React Native?',
          options: [
            'A backend framework',
            'A JavaScript library for building native mobile apps',
            'A markup language for UI design',
            'A testing tool'
          ],
          correctAnswerIndex: 1,
        ),
        QuestionModel(
          question: 'Which company developed React Native?',
          options: ['Google', 'Microsoft', 'Facebook', 'Amazon'],
          correctAnswerIndex: 2,
        ),
        QuestionModel(
          question: 'What is the purpose of "JSX" in React Native?',
          options: [
            'For styling components',
            'For managing app state',
            'For writing JavaScript code that looks like HTML',
            'For handling navigation'
          ],
          correctAnswerIndex: 2,
        ),
        QuestionModel(
          question:
              'What is the primary programming language used in React Native?',
          options: ['Python', 'Java', 'JavaScript', 'Ruby'],
          correctAnswerIndex: 2,
        ),
        QuestionModel(
          question: 'What is the command to create a new React Native project?',
          options: [
            'react-native init ProjectName',
            'npx react-native init ProjectName',
            'npm create react-native ProjectName',
            'create-react-native-app ProjectName'
          ],
          correctAnswerIndex: 1,
        ),
        QuestionModel(
          question: 'Which component is used to render text in React Native?',
          options: ['TextView', 'Label', 'Text', 'Paragraph'],
          correctAnswerIndex: 2,
        ),
        QuestionModel(
          question: 'How do you handle state in a React Native component?',
          options: [
            'Using this.setState',
            'Using setState() method',
            'Using useState hook',
            'Using StateManager class'
          ],
          correctAnswerIndex: 2,
        ),
        QuestionModel(
          question:
              'Which method is used to handle HTTP requests in React Native?',
          options: ['axios', 'fetch', 'http', 'request'],
          correctAnswerIndex: 1,
        ),
        QuestionModel(
          question: 'Which component is used for scrolling in React Native?',
          options: [
            'ScrollView',
            'FlatList',
            'SectionList',
            'All of the above'
          ],
          correctAnswerIndex: 3,
        ),
        QuestionModel(
          question: 'How do you apply styles to a component in React Native?',
          options: [
            'Using CSS files',
            'Using inline styles',
            'Using the StyleSheet API',
            'Using style attributes'
          ],
          correctAnswerIndex: 2,
        ),
      ],
      "Android": [
        QuestionModel(
          question:
              'What is the programming language primarily used for modern Android development (as of 2023)?',
          options: ['Java', 'Kotlin', 'C++', 'Python'],
          correctAnswerIndex: 1,
        ),
        QuestionModel(
          question: 'What is an Activity in Android?',
          options: [
            'A background process',
            'A UI component that represents a single screen',
            'A data storage mechanism',
            'A networking library'
          ],
          correctAnswerIndex: 1,
        ),
        QuestionModel(
          question: 'What is the purpose of the Android Manifest file?',
          options: [
            'To define app permissions and components',
            'To store app data',
            'To style the app UI',
            'To write unit tests'
          ],
          correctAnswerIndex: 0,
        ),
        QuestionModel(
          question: 'What is the Android operating system based on?',
          options: ['Linux', 'Windows', 'macOS', 'Unix'],
          correctAnswerIndex: 0,
        ),
        QuestionModel(
          question: 'Which tool is used to debug Android applications?',
          options: ['Xcode', 'Android Studio', 'Eclipse', 'Visual Studio'],
          correctAnswerIndex: 1,
        ),
        QuestionModel(
          question: 'What is the primary function of an Intent in Android?',
          options: [
            'To create a new thread',
            'To perform background tasks',
            'To request an action from another app component',
            'To manage app permissions'
          ],
          correctAnswerIndex: 2,
        ),
        QuestionModel(
          question:
              'What layout is best for arranging UI components in a linear manner?',
          options: [
            'RelativeLayout',
            'FrameLayout',
            'LinearLayout',
            'ConstraintLayout'
          ],
          correctAnswerIndex: 2,
        ),
        QuestionModel(
          question:
              'Which component is used to display a scrollable list of data in Android?',
          options: ['ListView', 'ScrollView', 'GridView', 'ViewPager'],
          correctAnswerIndex: 0,
        ),
        QuestionModel(
          question:
              'What is the use of the ViewModel component in Android architecture?',
          options: [
            'To handle UI and business logic',
            'To manage UI-related data in a lifecycle-conscious way',
            'To handle network operations',
            'To manage app permissions'
          ],
          correctAnswerIndex: 1,
        ),
        QuestionModel(
          question:
              'What is the Gradle build system used for in Android development?',
          options: [
            'To design UI layouts',
            'To manage and build project dependencies',
            'To debug applications',
            'To test applications'
          ],
          correctAnswerIndex: 1,
        ),
      ],
      "Swift": [
        QuestionModel(
          question: 'What is Swift primarily used for?',
          options: [
            'Web development',
            'Game development',
            'iOS, macOS, watchOS, and tvOS app development',
            'Database management'
          ],
          correctAnswerIndex: 2,
        ),
        QuestionModel(
          question: 'Which company created Swift?',
          options: ['Google', 'Apple', 'Microsoft', 'Amazon'],
          correctAnswerIndex: 1,
        ),
        QuestionModel(
          question: 'What is a "struct" in Swift?',
          options: [
            'A class that cannot be inherited',
            'A data type for storing collections of values',
            'A protocol that defines methods',
            'A value type that can store data and methods'
          ],
          correctAnswerIndex: 3,
        ),
        QuestionModel(
          question: 'What year was Swift first introduced?',
          options: ['2012', '2013', '2014', '2015'],
          correctAnswerIndex: 2,
        ),
        QuestionModel(
          question:
              'Which programming language did Swift aim to replace for iOS and macOS development?',
          options: ['Python', 'Objective-C', 'Java', 'Ruby'],
          correctAnswerIndex: 1,
        ),
        QuestionModel(
          question: 'What is a Swift playground?',
          options: [
            'A development environment for trying out Swift code',
            'A game development framework',
            'A Swift library for UI design',
            'An online Swift tutorial platform'
          ],
          correctAnswerIndex: 0,
        ),
        QuestionModel(
          question: 'Which keyword is used to define a constant in Swift?',
          options: ['let', 'var', 'const', 'define'],
          correctAnswerIndex: 0,
        ),
        QuestionModel(
          question: 'What does the "?" symbol signify when used in Swift?',
          options: [
            'An optional value',
            'A forced unwrapping of a value',
            'A type annotation',
            'A variable declaration'
          ],
          correctAnswerIndex: 0,
        ),
        QuestionModel(
          question: 'How do you declare a function in Swift?',
          options: [
            'def functionName() {}',
            'func functionName() {}',
            'function functionName() {}',
            'functionName() {}'
          ],
          correctAnswerIndex: 1,
        ),
        QuestionModel(
          question: 'Which of the following is true about Swift?',
          options: [
            'Swift is an interpreted language.',
            'Swift does not support type inference.',
            'Swift supports functional programming paradigms.',
            'Swift cannot interoperate with Objective-C code.'
          ],
          correctAnswerIndex: 2,
        ),
      ],
    };
  }
}
