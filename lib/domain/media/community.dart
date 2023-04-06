import 'package:webfeed_revised/domain/media/star_rating.dart';
import 'package:webfeed_revised/domain/media/statistics.dart';
import 'package:webfeed_revised/domain/media/tags.dart';
import 'package:webfeed_revised/util/iterable.dart';
import 'package:xml/xml.dart';

/// Used for community related content
/// See https://www.rssboard.org/media-rss#media-community
class Community {
  /// Default constructor for the Community class
  Community({
    this.starRating,
    this.statistics,
    this.tags,
  });

  /// Parse constructor for the Community class, used when 'parsing' a feed
  factory Community.parse(XmlElement element) => Community(
      starRating: element
          .findElements('media:starRating')
          .map(StarRating.parse)
          .firstOrNull,
      statistics: element
          .findElements('media:statistics')
          .map(Statistics.parse)
          .firstOrNull,
      tags: element
          .findElements('media:tags')
          .map(Tags.parse)
          .firstOrNull,
    );

  /// The star rating of a Media element
  final StarRating? starRating;
  /// The statistics of a Media element
  final Statistics? statistics;
  /// The tags of a Media element
  final Tags? tags;
}
