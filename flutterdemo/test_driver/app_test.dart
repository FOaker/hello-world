import 'package:flutter/cupertino.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Testing AUh Performance Tests', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        await driver.close();
      }
    });

    test('AUh test', () async {

      final AUhTimeline = await driver.traceAction(() async {

      });

      final AUhSummary = TimelineSummary.summarize(AUhTimeline);
      await AUhSummary.writeSummaryToFile('scrolling', pretty: true);
      await AUhSummary.writeTimelineToFile('scrolling', pretty: true);
    });
  });
}