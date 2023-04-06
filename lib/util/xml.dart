import 'dart:core';
import 'dart:developer';

import 'package:webfeed_revised/util/function.dart';
import 'package:webfeed_revised/util/iterable.dart';
import 'package:xml/xml.dart';

/// An extension on [XmlHasText] that adds a [parseText] method to simplify
/// parsing HTML
extension XmlTextParser on XmlElement {
  /// Convenience method to simplify parsing HTML based on the [parseHtml]
  /// parameter
  String parseText(bool parseHtml) =>
      parseHtml ? removeHtml(innerText) : innerText;
}

/// Finds the elements with the given [name] in the given [node]
Iterable<XmlElement>? findElements(
  XmlNode? node,
  String name, {
  bool recursive = false,
  String? namespace,
}) {
  try {
    if (recursive) {
      return node?.findAllElements(name, namespace: namespace);
    } else {
      return node?.findElements(name, namespace: namespace);
    }
  } on Exception catch (e) {
    log('Error occurred during finding XmlElements');
    log(e.toString());
    return null;
  }
}

/// Finds the first element with the given [tagName] in the given [element] and
/// parses it as a boolean
bool parseBoolLiteral(XmlElement element, String tagName) {
  final v =
      element.findElements(tagName).firstOrNull?.text.toLowerCase().trim();
  if (v == null) return false;
  return ['yes', 'true'].contains(v);
}
