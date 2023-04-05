String? removeHtml(String? input) {
  if (input == null) return null;
  // Define a regular expression pattern that matches HTML tags
  var exp = RegExp(r'<[^>]*>');

  // Replace the HTML tags with their Dart equivalent
  while (exp.hasMatch(input!)) {
    input = input.replaceFirstMapped(exp, (match) {
      if (match.start == 0) {
        return '';
      }
      var tag = match.group(0);
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
  return input;
}
