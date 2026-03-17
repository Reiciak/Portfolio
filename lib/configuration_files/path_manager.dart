class PathManager {
  static const String _icons = 'assets/icons';
  static const String _images = 'assets/images';

  static String icon(String name) => '$_icons/$name.png';
  static String image(String name) => '$_images/$name.png';

  static String github({bool isWhite = false}) =>
      icon(isWhite ? 'githubIcon_white' : 'githubIcon_black');
}
