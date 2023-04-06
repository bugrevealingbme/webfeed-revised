import 'package:xml/xml.dart';

/// Allows processes to register with a cloud to be notified of changes
/// See https://www.rssboard.org/rss-specification#ltcloudgtSubelementOfLtchannelgt
class RssCloud {
  /// Default constructor for the RssCloud class
  RssCloud(
    this.domain,
    this.port,
    this.path,
    this.registerProcedure,
    this.protocol,
  );

  /// Parse constructor for the RssCloud class, used when 'parsing' a feed
  factory RssCloud.parse(XmlElement node) {
    final domain = node.getAttribute('domain');
    final port = node.getAttribute('port');
    final path = node.getAttribute('path');
    final registerProcedure = node.getAttribute('registerProcedure');
    final protocol = node.getAttribute('protocol');
    return RssCloud(domain, port, path, registerProcedure, protocol);
  }

  /// The domain of the cloud
  final String? domain;
  /// The port of the cloud endpoint
  final String? port;
  /// The path of the cloud endpoint
  final String? path;
  /// The register procedure of the cloud
  final String? registerProcedure;
  /// The protocol of the cloud endpoint
  final String? protocol;
}
