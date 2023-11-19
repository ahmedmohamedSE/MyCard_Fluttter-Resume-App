import 'dev_model.dart';

/// Custom Class for storing Developer Data locally
class MyPersonalData {
  MyPersonalData._();

  static MyPersonalDataModel devData = MyPersonalDataModel(
    name: "Ahmed Mohamed",
    bio: devBio,
    skillsAndProgress: <SkillsData>[
      SkillsData(
        name: 'Software Engineer',
        progress: 0.8,
      ),
      SkillsData(
        name: 'Mobile Apps Developer',
        progress: 0.7,
      ),
      SkillsData(
        name: 'Flutter Developer',
        progress: 0.6,
      ),
    ],
    hobbies: <String>[
      "Learning about Development",
      "Create Mobile Apps",
      "Read articles about my field",
      "Listen a Podcasts",
    ],
    number: '+201122138982',
    mail: 'ahmdmhmdmhmdbdalghny@gmail.com',

  );

  static const String devBio = """
I'm Ahmed Mohamed, a motivated software engineering student with a passion for mobile development using Dart and Flutter 📱. I enjoy sharing programming knowledge on social media 🌐. Check out my portfolio on Facebook and Linkedin 📷. Let's explore mobile development together! 🚀"
""";
}
