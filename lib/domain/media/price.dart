import 'package:xml/xml.dart';

/// The price of a media feed
/// See https://www.rssboard.org/media-rss#media-price
class Price {
  /// Default constructor for the Price class
  Price({
    this.price,
    this.type,
    this.info,
    this.currency,
  });

  /// Parse constructor for the Price class, used when 'parsing' a feed
  factory Price.parse(XmlElement element) => Price(
        price: double.tryParse(element.getAttribute('price') ?? '0'),
        type: element.getAttribute('type'),
        info: element.getAttribute('info'),
        currency: element.getAttribute('currency'),
      );

  /// The price of the media
  final double? price;

  /// The type of the price
  final String? type;

  /// The info of the price
  final String? info;

  /// The currency of the price
  final String? currency;
}
