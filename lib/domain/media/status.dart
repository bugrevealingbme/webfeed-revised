import 'package:xml/xml.dart';

/// The status of a media element
/// See https://www.rssboard.org/media-rss#media-status
class Status {
  /// Default constructor for the Status class
  Status({
    this.state,
    this.reason,
  });

  /// Parse constructor for the Status class, used when 'parsing' a feed
  factory Status.parse(XmlElement element) => Status(
      state: element.getAttribute('state'),
      reason: element.getAttribute('reason'),
    );

  /// The state of the status
  final String? state;
  /// The reason of the status
  final String? reason;
}
