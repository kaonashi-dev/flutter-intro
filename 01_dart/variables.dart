void main() {
  final String name = 'Kaonashi';
  final int score = 100;
  final List<String> skills = ['PHP', 'JavaScript', 'Dart'];

  //Dynamic = null
  dynamic errorMessage = 'Error :)';
  errorMessage = true;
  errorMessage = {1, 2, 3};
  errorMessage = null;

  final Map<String, dynamic> dev = {
    'name': 'Kaonashi',
    'score': 100,
  };

  print("""
    $name
    $score
    $skills
		$errorMessage
		$dev
  """);

  print('${dev['name']}');
}
