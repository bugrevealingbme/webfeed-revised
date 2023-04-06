import 'package:xml/xml.dart';

/// The rights of a media element
/// See https://www.rssboard.org/media-rss#media-rights
class Rights {
  /// Default constructor for the Rights class
  Rights({
    this.status,
  });

  /// Parse constructor for the Rights class, used when 'parsing' a feed
  factory Rights.parse(XmlElement element) => Rights(
        status: element.getAttribute('status'),
      );

  /// The status of the rights
  final String? status;
}
