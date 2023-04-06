import 'package:xml/xml.dart';

/// The statistics of a media element
/// See https://www.rssboard.org/media-rss#media-statistics
class Statistics {
  /// Default constructor for the Statistics class
  Statistics({
    this.views,
    this.favorites,
  });

  /// Parse constructor for the Statistics class, used when 'parsing' a feed
  factory Statistics.parse(XmlElement? element) => Statistics(
      views: int.tryParse(element?.getAttribute('views') ?? '0'),
      favorites: int.tryParse(element?.getAttribute('favorites') ?? '0'),
    );

  /// The views of the media
  final int? views;
  /// The favorites of the media
  final int? favorites;
}
