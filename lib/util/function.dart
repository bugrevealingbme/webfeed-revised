/// Returns a string with HTML tags removed and replaced with their Dart
/// equivalent
String removeHtml(String input) {
  // Define a regular expression pattern that matches HTML tags
  final exp = RegExp('<[^>]*>');

  var parsedString = input;

  // Replace the HTML tags with their Dart equivalent
  while (exp.hasMatch(parsedString)) {
    parsedString = parsedString.replaceFirstMapped(exp, (match) {
      if (match.start == 0) {
        return '';
      }
      final tag = match.group(0);
      switch (tag) {
        case '<p>':
          return '\n\n';
        case '<br>':
        case '<hr>':
          return '\n';
        case '<em>':
        case '<i>':
          return '_';
        case '<strong>':
        case '<b>':
          return '**';
        case '<u>':
          return '<u>';
        default:
          return '';
      }
    });
  }

  // Return the resulting string
  return parsedString;
}
