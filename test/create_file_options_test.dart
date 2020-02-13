import 'package:gitea_openapi/api.dart';
import 'package:test/test.dart';

// tests for CreateFileOptions
void main() {
    var instance = new CreateFileOptions();

  group('test CreateFileOptions', () {
    // Identity author (default value: null)
    test('to test the property `author`', () async {
      // TODO
    });

    // branch (optional) to base this file from. if not given, the default branch is used
    // String branch (default value: null)
    test('to test the property `branch`', () async {
      // TODO
    });

    // Identity committer (default value: null)
    test('to test the property `committer`', () async {
      // TODO
    });

    // content must be base64 encoded
    // String content (default value: null)
    test('to test the property `content`', () async {
      // TODO
    });

    // CommitDateOptions dates (default value: null)
    test('to test the property `dates`', () async {
      // TODO
    });

    // message (optional) for the commit of this file. if not supplied, a default message will be used
    // String message (default value: null)
    test('to test the property `message`', () async {
      // TODO
    });

    // new_branch (optional) will make a new branch from `branch` before creating the file
    // String newBranch (default value: null)
    test('to test the property `newBranch`', () async {
      // TODO
    });


  });

}
