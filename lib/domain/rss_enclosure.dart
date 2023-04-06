import 'package:xml/xml.dart';

/// The enclosure of a Rss item
/// https://www.rssboard.org/rss-specification#ltenclosuregtSubelementOfLtitemgt
class RssEnclosure {
  /// Default constructor for the RssEnclosure class
  RssEnclosure(this.url, this.type, this.length);

  /// Parse constructor for the RssEnclosure class, used when 'parsing' a feed
  factory RssEnclosure.parse(XmlElement element) {
    final url = element.getAttribute('url');
    final type = element.getAttribute('type');
    final length = int.tryParse(element.getAttribute('length') ?? '0');
    return RssEnclosure(url, type, length);
  }

  /// The url of the enclosure
  final String? url;

  /// The type of the enclosure
  final String? type;

  /// The length of the enclosure
  final int? length;
}
