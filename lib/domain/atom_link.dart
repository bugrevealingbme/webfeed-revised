import 'package:xml/xml.dart';

/// Defines a reference from an entry or feed to a Web resource
/// See https://tools.ietf.org/html/rfc4287#section-4.2.7
class AtomLink {
  /// Default constructor for the AtomLink class
  AtomLink(
    this.href,
    this.rel,
    this.type,
    this.hreflang,
    this.title,
    this.length,
  );

  /// Parse constructor for the AtomLink class, used when 'parsing' a feed
  factory AtomLink.parse(XmlElement element) {
    final href = element.getAttribute('href');
    final rel = element.getAttribute('rel');
    final type = element.getAttribute('type');
    final title = element.getAttribute('title');
    final hreflang = element.getAttribute('hreflang');
    var length = 0;
    if (element.getAttribute('length') != null) {
      length = int.parse(element.getAttribute('length')!);
    }
    return AtomLink(href, rel, type, hreflang, title, length);
  }

  /// The URI of the referenced resource
  final String? href;
  /// The link relationship type
  final String? rel;
  /// The media type of the referenced resource
  final String? type;
  /// The language of the referenced resource
  final String? hreflang;
  /// The human-readable information about the link
  final String? title;
  /// The length of the resource, in bytes
  final int length;
}
