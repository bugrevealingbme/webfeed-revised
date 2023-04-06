import 'package:xml/xml.dart';

/// Used for conveying information about a category associated with an entry or
/// feed
/// See https://tools.ietf.org/html/rfc4287#section-4.2.2
class AtomCategory {
  /// Default constructor for the AtomCategory class
  AtomCategory(this.term, this.scheme, this.label);

  /// Parse constructor for the AtomCategory class, used when 'parsing' a feed
  factory AtomCategory.parse(XmlElement element) {
    final term = element.getAttribute('term');
    final scheme = element.getAttribute('scheme');
    final label = element.getAttribute('label');
    return AtomCategory(term, scheme, label);
  }

  /// The category term
  final String? term;

  /// The category scheme
  final String? scheme;

  /// The category label
  final String? label;
}
