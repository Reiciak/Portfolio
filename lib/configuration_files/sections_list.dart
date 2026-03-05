class SectionItem {
  final String imagePath;
  final String text;

  const SectionItem({required this.imagePath, required this.text});
}

const List<SectionItem> sections = [
  SectionItem(imagePath: 'About', text: 'Kilka słów o mnie'),
  SectionItem(imagePath: 'Skills', text: 'Unity, C#, Dart, Flutter, Figma'),
  SectionItem(
    imagePath: 'Projects',
    text: 'Calculator, ChatGPT Game, BowlingVR',
  ),
];
