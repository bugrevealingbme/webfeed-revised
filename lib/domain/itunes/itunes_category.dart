import 'package:xml/xml.dart';

/// The iTunes category of a podcast
/// See https://help.apple.com/itc/podcasts_connect/#/itcb54353390
class ItunesCategory {
  /// Default constructor for the ItunesCategory class
  ItunesCategory({this.category, this.subCategories});

  /// Parse constructor for the ItunesCategory class, used when 'parsing' a feed
  factory ItunesCategory.parse(XmlElement element) => ItunesCategory(
        category: element.getAttribute('text')?.trim(),
        subCategories: element
            .findElements('itunes:category')
            .map((e) => e.getAttribute('text')?.trim() ?? '')
            .toList(),
      );

  /// The category of the podcast
  final String? category;
  /// The sub categories of the podcast
  final List<String>? subCategories;
}
