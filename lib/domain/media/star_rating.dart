import 'package:xml/xml.dart';

/// The star rating of a media element
/// See https://www.rssboard.org/media-rss#media-rating
class StarRating {
  /// Default constructor for the StarRating class
  StarRating({
    this.average,
    this.count,
    this.min,
    this.max,
  });

  /// Parse constructor for the StarRating class, used when 'parsing' a feed
  factory StarRating.parse(XmlElement? element) => StarRating(
      average: double.tryParse(element?.getAttribute('average') ?? '0'),
      count: int.tryParse(element?.getAttribute('count') ?? '0'),
      min: int.tryParse(element?.getAttribute('min') ?? '0'),
      max: int.tryParse(element?.getAttribute('max') ?? '0'),
    );

  /// The average of the star rating
  final double? average;
  /// The count of the star rating
  final int? count;
  /// The min of the star rating
  final int? min;
  /// The max of the star rating
  final int? max;
}
