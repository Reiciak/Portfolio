
class Project {
  final String title;
  final String description;
  final String imagePath;
  final String tools;

  Project({
  required this.title,
  required this.description,
  required this.imagePath,
  required this.tools,
  });
}

List<Project> projects = [
  Project(
    title: 'Kalkulator',
    description: 'Prosty projekt kalkulatora',
    imagePath: 'assets/images/calculator.png',
    tools: 'Dart, Flutter, Riverpod 3.0',
  ),
  Project(
    title: 'Bowling VR',
    description: 'Gra w kręgle z wykorzystaniem technologii VR. Modele kręgli, '
                'kuli oraz maszyny do powrotu kul zostały wykonane '
                'własnoręcznie w programie blender.',
    imagePath: 'assets/images/bowlingVR.png',
    tools: 'C#, Unity, Blender, VR',
  ),
  Project(
      title: 'ChatGPT Game',
      description: 'Prototyp gry z wykorzystaniem ChatGPT API',
      imagePath: 'assets/images/chatgptGame.png',
      tools: 'Unreal Engine 5, Blueprints, OpenAI API')
];
