import 'package:gitea_openapi/api.dart';
import 'package:test/test.dart';

// tests for InternalTracker
void main() {
    var instance = new InternalTracker();

  group('test InternalTracker', () {
    // Let only contributors track time (Built-in issue tracker)
    // bool allowOnlyContributorsToTrackTime (default value: null)
    test('to test the property `allowOnlyContributorsToTrackTime`', () async {
      // TODO
    });

    // Enable dependencies for issues and pull requests (Built-in issue tracker)
    // bool enableIssueDependencies (default value: null)
    test('to test the property `enableIssueDependencies`', () async {
      // TODO
    });

    // Enable time tracking (Built-in issue tracker)
    // bool enableTimeTracker (default value: null)
    test('to test the property `enableTimeTracker`', () async {
      // TODO
    });


  });

}
