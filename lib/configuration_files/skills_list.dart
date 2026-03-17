class Skill {
  final String displayName;
  final String? iconPath;

  const Skill(this.displayName, {this.iconPath});

  @override
  String toString() => displayName;
}

class SkillCategory {
  final String title;
  final List<Skill> skills;

  const SkillCategory({required this.title, required this.skills});
}

const List<SkillCategory> skillCategories = [
  SkillCategory(
    title: 'Tech Stack',
    skills: [
      Skill('Flutter', iconPath: 'FlutterIcon'),
      Skill('Dart', iconPath: 'DartIcon'),
      Skill('Riverpod', iconPath: 'RiverpodIcon'),
    ],
  ),
  SkillCategory(
    title: 'Game Development',
    skills: [
      Skill('C#', iconPath: 'CSharpIcon'),
      Skill('Unity', iconPath: 'UnityIcon'),
      Skill('Ink language', iconPath: 'InkIcon'),
      Skill('Yarn', iconPath: 'YarnIcon'),
    ],
  ),
  SkillCategory(
    title: 'Tools',
    skills: [
      Skill('Git', iconPath: 'githubIcon_black'),
      Skill('Figma', iconPath: 'FigmaIcon'),
      Skill('Blender', iconPath: 'BlenderIcon'),
    ],
  ),
  SkillCategory(
    title: 'Other',
    skills: [
      Skill('SQL Database', iconPath: 'SQLIcon'),
      Skill('OpenAI API', iconPath: 'OpenAIIcon'),
      Skill('ENG B2', iconPath: 'EduIcon'),
    ],
  ),
];
