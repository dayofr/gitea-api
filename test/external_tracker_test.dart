import 'package:openapi/api.dart';
import 'package:test/test.dart';

// tests for ExternalTracker
void main() {
    var instance = new ExternalTracker();

  group('test ExternalTracker', () {
    // External Issue Tracker URL Format. Use the placeholders {user}, {repo} and {index} for the username, repository name and issue index.
    // String externalTrackerFormat (default value: null)
    test('to test the property `externalTrackerFormat`', () async {
      // TODO
    });

    // External Issue Tracker Number Format, either `numeric` or `alphanumeric`
    // String externalTrackerStyle (default value: null)
    test('to test the property `externalTrackerStyle`', () async {
      // TODO
    });

    // URL of external issue tracker.
    // String externalTrackerUrl (default value: null)
    test('to test the property `externalTrackerUrl`', () async {
      // TODO
    });


  });

}
