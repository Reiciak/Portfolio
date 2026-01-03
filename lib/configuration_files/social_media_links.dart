
class Link {
  final String socialMediaName;
  final String socialMediaLink;
  final String socialMediaImagePath;


  Link({
    required this.socialMediaName,
    required this.socialMediaLink,
    required this.socialMediaImagePath,
  });
}

List<Link> links = [
Link(
socialMediaName: 'linkedin',
socialMediaLink: 'https://www.linkedin.com/in/karolinabolek1/',
socialMediaImagePath: 'linkedinIcon',
),
Link(
socialMediaName: 'GitHub',
socialMediaLink: 'https://github.com/Reiciak',
socialMediaImagePath: 'GitHubIcon_black',
),
Link(
socialMediaName: 'Gmail',
socialMediaLink: 'mailto:karolina16478@gmail.com',
socialMediaImagePath: 'gmailIcon',)
];