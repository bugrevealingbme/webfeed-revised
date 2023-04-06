import 'package:webfeed_revised/domain/media/category.dart';
import 'package:webfeed_revised/domain/media/content.dart';
import 'package:webfeed_revised/domain/media/credit.dart';
import 'package:webfeed_revised/domain/media/rating.dart';
import 'package:webfeed_revised/util/iterable.dart';
import 'package:xml/xml.dart';

/// Enables media content to be grouped
/// See https://www.rssboard.org/media-rss#media-group
class Group {
  /// Default constructor for the Group class
  Group({
    this.contents,
    this.credits,
    this.category,
    this.rating,
  });

  /// Parse constructor for the Group class, used when 'parsing' a feed
  factory Group.parse(XmlElement element) => Group(
        contents:
            element.findElements('media:content').map(Content.parse).toList(),
        credits:
            element.findElements('media:credit').map(Credit.parse).toList(),
        category: element
            .findElements('media:category')
            .map(Category.parse)
            .firstOrNull,
        rating:
            element.findElements('media:rating').map(Rating.parse).firstOrNull,
      );

  /// The contents of the Media element
  final List<Content>? contents;
  /// The credits of the Media element
  final List<Credit>? credits;
  /// The category of the Media element
  final Category? category;
  /// The rating of the Media element
  final Rating? rating;
}
