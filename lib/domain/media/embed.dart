import 'package:webfeed_revised/domain/media/param.dart';
import 'package:xml/xml.dart';

/// Player specific embed code
/// See https://www.rssboard.org/media-rss#media-embed
class Embed {
  /// Default constructor for the Embed class
  Embed({
    this.url,
    this.width,
    this.height,
    this.params,
  });

  /// Parse constructor for the Embed class, used when 'parsing' a feed
  factory Embed.parse(XmlElement element) => Embed(
        url: element.getAttribute('url'),
        width: int.tryParse(element.getAttribute('width') ?? '0'),
        height: int.tryParse(element.getAttribute('height') ?? '0'),
        params: element.findElements('media:param').map(Param.parse).toList(),
      );

  /// The url of the embed
  final String? url;
  /// The width of the embed element
  final int? width;
  /// The height of the embed element
  final int? height;
  /// Parameters of the embed, such as type
  final List<Param>? params;
}
