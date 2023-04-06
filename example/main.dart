import 'dart:developer';
import 'dart:io';

import 'package:http/io_client.dart';
import 'package:webfeed_revised/webfeed_revised.dart';

void main() async {
  final client = IOClient(
    HttpClient()..badCertificateCallback = ((cert, host, port) => true),
  );

  // RSS feed
  var response = await client.get(
    Uri.parse(
      'https://developer.apple.com/news/releases/rss/releases.rss',
    ),
  );
  final rssFeed = RssFeed.parse(response.body);
  log(rssFeed.toString());

  // Atom feed
  response = await client.get(
    Uri.parse(
      'https://www.theverge.com/rss/index.xml',
    ),
  );
  final atomFeed = AtomFeed.parse(response.body);
  log(atomFeed.toString());

  client.close();
}
