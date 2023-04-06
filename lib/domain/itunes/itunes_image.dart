import 'package:xml/xml.dart';

/// The iTunes image of a podcast
/// See https://help.apple.com/itc/podcasts_connect/#/itcb54353390
class ItunesImage {
  /// Default constructor for the ItunesImage class
  ItunesImage({this.href});

  /// Parse constructor for the ItunesImage class, used when 'parsing' a feed
  factory ItunesImage.parse(XmlElement element) => ItunesImage(
      href: element.getAttribute('href')?.trim(),
    );

  /// The href of the image
  final String? href;
}
