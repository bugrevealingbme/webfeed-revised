import 'package:webfeed_revised/util/xml.dart';
import 'package:xml/xml.dart';

/// The title of a media element
/// See https://www.rssboard.org/media-rss#media-title
class Title {
  /// Default constructor for the Title class
  Title({
    this.type,
    this.value,
  });

  /// Parse constructor for the Title class, used when 'parsing' a feed
  factory Title.parse(XmlElement element, bool parseHtml) => Title(
        type: element.getAttribute('type'),
        value: element.parseText(parseHtml),
      );

  /// The type of the title
  final String? type;

  /// The value of the title
  final String? value;
}
