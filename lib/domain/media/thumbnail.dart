import 'package:xml/xml.dart';

/// The thumbnail of a media element
/// See https://www.rssboard.org/media-rss#media-thumbnail
class Thumbnail {
  /// Default constructor for the Thumbnail class
  Thumbnail({
    this.url,
    this.width,
    this.height,
    this.time,
  });

  /// Parse constructor for the Thumbnail class, used when 'parsing' a feed
  factory Thumbnail.parse(XmlElement element) => Thumbnail(
        url: element.getAttribute('url'),
        width: element.getAttribute('width'),
        height: element.getAttribute('height'),
        time: element.getAttribute('time'),
      );

  /// The url of the thumbnail
  final String? url;

  /// The width of the thumbnail
  final String? width;

  /// The height of the thumbnail
  final String? height;

  /// The time of the thumbnail
  final String? time;
}
