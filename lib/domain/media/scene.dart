import 'package:webfeed_revised/util/iterable.dart';
import 'package:webfeed_revised/util/xml.dart';
import 'package:xml/xml.dart';

/// Used to specify a scene of a media element
/// See https://www.rssboard.org/media-rss#media-scene
class Scene {
  /// Default constructor for the Scene class
  Scene({
    this.title,
    this.description,
    this.startTime,
    this.endTime,
  });

  /// Parse constructor for the Scene class, used when 'parsing' a feed
  factory Scene.parse(XmlElement element, bool parseHtml) => Scene(
        title: element
            .findElements('sceneTitle')
            .firstOrNull
            ?.parseText(parseHtml),
        description: element
            .findElements('sceneDescription')
            .firstOrNull
            ?.parseText(parseHtml),
        startTime: element.findElements('sceneStartTime').firstOrNull?.text,
        endTime: element.findElements('sceneEndTime').firstOrNull?.text,
      );

  /// The title of the scene
  final String? title;

  /// The description of the scene
  final String? description;

  /// The start time of the scene
  final String? startTime;

  /// The end time of the scene
  final String? endTime;
}
