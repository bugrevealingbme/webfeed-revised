import 'package:xml/xml.dart';

/// The content of a feed
/// See https://www.rssboard.org/media-rss#media-content
class Content {
  /// Default constructor for the Content class
  Content({
    this.url,
    this.type,
    this.fileSize,
    this.medium,
    this.isDefault,
    this.expression,
    this.bitrate,
    this.framerate,
    this.samplingrate,
    this.channels,
    this.duration,
    this.height,
    this.width,
    this.lang,
  });

  /// Parse constructor for the Content class, used when 'parsing' a feed
  factory Content.parse(XmlElement element) => Content(
      url: element.getAttribute('url'),
      type: element.getAttribute('type'),
      fileSize: int.tryParse(element.getAttribute('fileSize') ?? '0'),
      medium: element.getAttribute('medium'),
      isDefault: element.getAttribute('isDefault') == 'true',
      expression: element.getAttribute('expression'),
      bitrate: int.tryParse(element.getAttribute('bitrate') ?? '0'),
      framerate: double.tryParse(element.getAttribute('framerate') ?? '0'),
      samplingrate: double.tryParse(
        element.getAttribute('samplingrate') ?? '0',
      ),
      channels: int.tryParse(element.getAttribute('channels') ?? '0'),
      duration: int.tryParse(element.getAttribute('duration') ?? '0'),
      height: int.tryParse(element.getAttribute('height') ?? '0'),
      width: int.tryParse(element.getAttribute('width') ?? '0'),
      lang: element.getAttribute('lang'),
    );

  /// The url of the content
  final String? url;
  /// The type of the content
  final String? type;
  /// The file size of the content
  final int? fileSize;
  /// The medium of the content
  final String? medium;
  /// The isDefault of the content
  final bool? isDefault;
  /// The expression of the content
  final String? expression;
  /// The bitrate of the content
  final int? bitrate;
  /// The framerate of the content
  final double? framerate;
  /// The samplingrate of the content
  final double? samplingrate;
  /// The channels of the content
  final int? channels;
  /// The duration of the content
  final int? duration;
  /// The height of the content
  final int? height;
  /// The width of the content
  final int? width;
  /// The lang of the content
  final String? lang;
}
