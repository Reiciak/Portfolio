
enum Skill {
  flutter('Flutter'),
  dart('Dart'),
  riverpod('Riverpod'),
  figma('Figma'),
  git('Git'),
  sql('SQL Database'),
  unity('Unity'),
  ink('Ink language'),
  cSharp('C#'),
  openAI('OpenAI API'),
  blender('Blender'),
  angelski('Angieskiki B2');

final String displayName;

const Skill (this.displayName);

@override
String toString() => displayName;
}